'use client';

import { useEffect, useState } from 'react';
import Header from '../components/header';

interface UserProfile {
  last_name: string;
  first_name: string;
  middle_name: string;
  certificate_number: string;
  email: string;
  phone: string;
  address: string;
  organization: string;
  organization_address: string;
}

interface Document {
  id: number;
  title: string;
  content: string;
  created_at: string;
}

const fieldLabels: Record<keyof UserProfile, string> = {
  last_name: 'Фамилия',
  first_name: 'Имя',
  middle_name: 'Отчество',
  certificate_number: 'Номер аттестата',
  email: 'Электронная почта',
  phone: 'Телефон',
  address: 'Адрес',
  organization: 'Наименование организации',
  organization_address: 'Адрес организации'
};

const fieldValidations: Partial<Record<keyof UserProfile, { regex: string; errorText: string }>> = {
  last_name: { regex: "[а-яА-ЯёЁ\\-0-9][а-яА-ЯёЁ\\-\\s'',.]*", errorText: "Русские буквы, дефис, апостроф" },
  first_name: { regex: "[а-яА-ЯёЁ\\-0-9][а-яА-ЯёЁ\\-\\s'',.]*", errorText: "Русские буквы, дефис, апостроф" },
  middle_name: { regex: "[а-яА-ЯёЁ\\-0-9][а-яА-ЯёЁ\\-\\s'',.]*", errorText: "Русские буквы, дефис, апостроф" },
  phone: { regex: "(\\+7[0-9]{1,14}|)", errorText: "Шаблон: +7N, где N - цифры" },
  email: { regex: "([0-9a-zA-Z_.\\-]{2,50}[@]{1}[0-9a-zA-Z_.\\-]{2,50}[.]{1}[a-zA-Z]{2,5}|)", 
    errorText: "Шаблон 'S@S.L', где S - от 2-х до 50 символов, L - от 2-х до 5 букв" },
  certificate_number: { regex: "(.{1,50}|)", errorText: "Не более 50 символов" },
  address: { regex: "(.{1,2500})", errorText: "Не более 2500 символов" },
  organization_address: { regex: "(.{1,2500})", errorText: "Не более 2500 символов" },
  organization: { regex: "(.{1,255})", errorText: "Не более 255 символов" }
};

export default function ProfilePage() {
  const [isEditing, setIsEditing] = useState(false);
  const [profile, setProfile] = useState<UserProfile>({
    last_name: '',
    first_name: '',
    middle_name: '',
    certificate_number: '',
    email: '',
    phone: '',
    address: '',
    organization: '',
    organization_address: ''
  });
  const [originalProfile, setOriginalProfile] = useState<UserProfile | null>(null);
  const [errors, setErrors] = useState<Partial<Record<keyof UserProfile, string>>>({});
  const [documents, setDocuments] = useState<Document[]>([]);
  const [expandedDocs, setExpandedDocs] = useState<Set<number>>(new Set());
  const [docToDelete, setDocToDelete] = useState<number | null>(null);

  useEffect(() => {
    const token = localStorage.getItem('authToken');
    if (!token) return;

    fetch('http://localhost:8000/profiles', {
      headers: { Authorization: token }
    })
      .then(res => res.json())
      .then(data => {
        setProfile(data);
        setOriginalProfile(data);
      });

    fetch('http://localhost:8000/documents', {
      headers: { Authorization: token }
    })
      .then(res => res.json())
      .then(setDocuments);
  }, []);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setProfile(prev => ({ ...prev, [name]: value }));

    const field = name as keyof UserProfile;
    const validation = fieldValidations[field];
    if (validation) {
      try {
        const regex = new RegExp(`^${validation.regex}$`);
        if (!regex.test(value)) {
          setErrors(prev => ({ ...prev, [field]: validation.errorText }));
        } else {
          setErrors(prev => {
            const newErrors = { ...prev };
            delete newErrors[field];
            return newErrors;
          });
        }
      } catch {
        console.warn('Некорректная регулярка:', validation.regex);
      }
    }
  };

  const handleSave = async () => {
    const token = localStorage.getItem('authToken');
    if (!token) return;

    if (Object.keys(errors).length > 0) {
      alert('Пожалуйста, исправьте ошибки.');
      return;
    }

    const res = await fetch('http://localhost:8000/profiles', {
      method: 'PUT',
      headers: {
        Authorization: token,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(profile)
    });

    if (res.ok) {
      const updated = await res.json();
      setProfile(updated);
      setOriginalProfile(updated);
      setIsEditing(false);
    } else {
      alert('Ошибка при сохранении');
    }
  };

  const handleCancel = () => {
    if (originalProfile) {
      setProfile(originalProfile);
      setErrors({});
      setIsEditing(false);
    }
  };

  const toggleExpand = (id: number) => {
    setExpandedDocs(prev => {
      const set = new Set(prev);
      set.has(id) ? set.delete(id) : set.add(id);
      return set;
    });
  };

  const handleConfirmDelete = async () => {
    if (!docToDelete) return;
    const token = localStorage.getItem('authToken');
    const res = await fetch(`http://localhost:8000/documents/${docToDelete}`, {
      method: 'DELETE',
      headers: { Authorization: token! }
    });

    if (res.ok) {
      setDocuments(prev => prev.filter(doc => doc.id !== docToDelete));
      setDocToDelete(null);
    } else {
      alert('Ошибка удаления');
    }
  };

  const handleDownloadPdf = async (doc: Document) => {
    const formData = new FormData();
    formData.append('html', doc.content);
    formData.append('title', doc.title);

    const res = await fetch('http://localhost:8000/render-pdf', {
      method: 'POST',
      body: formData
    });

    const blob = await res.blob();
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `${doc.title}.pdf`;
    a.click();
    URL.revokeObjectURL(url);
  };

  return (
    <>
      <Header />
      <main style={{ minHeight: '100vh', backgroundColor: 'var(--page-background)', padding: '6rem 1rem 2rem' }}>
        {/* Личный профиль */}
        <div style={{
          maxWidth: '910px',
          margin: '0 auto',
          padding: '30px',
          backgroundColor: 'var(--background)',
          borderRadius: '8px',
          boxShadow: '0 2px 10px rgba(0, 0, 0, 0.1)'
        }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '1.5rem' }}>
            <h1 style={{ fontSize: '24px', fontWeight: '600', color: 'var(--foreground)' }}>Личный профиль</h1>
            {!isEditing ? (
              <button onClick={() => setIsEditing(true)} style={buttonStyle('var(--success)')}>Редактировать</button>
            ) : (
              <div style={{ display: 'flex', gap: '0.5rem' }}>
                <button onClick={handleSave} style={buttonStyle('var(--success)')}>Сохранить</button>
                <button onClick={handleCancel} style={buttonStyle('var(--danger)')}>Отмена</button>
              </div>
            )}
          </div>

          <div style={{ display: 'grid', gap: '1rem', color: 'var(--foreground)' }}>
            {Object.entries(profile).map(([key, value]) => (
              <div key={key}>
                <ProfileField
                  label={fieldLabels[key as keyof UserProfile]}
                  name={key as keyof UserProfile}
                  value={value ?? ''}
                  isEditing={isEditing}
                  onChange={handleInputChange}
                />
                {errors[key as keyof UserProfile] && (
                  <div style={{ color: 'var(--danger)', fontSize: '0.85rem' }}>
                    {errors[key as keyof UserProfile]}
                  </div>
                )}
              </div>
            ))}
          </div>
        </div>

        {/* Сохранённые документы */}
        <div style={{
          maxWidth: '910px',
          margin: '2rem auto',
          padding: '30px',
          backgroundColor: 'var(--background)',
          borderRadius: '8px',
          boxShadow: '0 2px 10px rgba(0,0,0,0.1)'
        }}>
          <h2 style={{ marginBottom: '2rem', fontSize: '24px', fontWeight: '600', color: 'var(--foreground)' }}>Сохранённые документы</h2>
          {documents.length === 0 ? (
            <p style={{ color: 'var(--foreground)' }}>Нет сохранённых документов</p>
          ) : (
            <ul style={{ listStyle: 'none', padding: 0, }}>
              {documents.map(doc => (
                <li key={doc.id} style={{ border: '1px solid #ccc', borderRadius: '0.5rem', marginBottom: '1rem', color: 'var(--foreground)' }}>
                  <div style={{ padding: '0.75rem 1rem', display: 'flex', justifyContent: 'space-between', alignItems: 'center', }}>
                    <div>
                      <strong>{doc.title}</strong>
                      <div style={{ fontSize: '0.9rem' }}>{new Date(doc.created_at).toLocaleString()}</div>
                    </div>
                    <div style={{ display: 'flex', gap: '0.5rem' }}>
                      <button onClick={() => toggleExpand(doc.id)} style={filledIconButton('var(--primary)')}>🧾</button>
                      <button onClick={() => handleDownloadPdf(doc)} style={filledIconButton('var(--success)')}>📥</button>
                      <button onClick={() => setDocToDelete(doc.id)} style={filledIconButton('var(--danger)')}>🗑️</button>
                    </div>
                  </div>
                  {expandedDocs.has(doc.id) && (
                    <div style={{
                      padding: '1rem',
                      backgroundColor: 'white',
                      borderRadius: '1rem',
                      border: '0.5px solid #ccc',
                      margin: '0 1rem 1rem'
                    }}>
                      <iframe srcDoc={doc.content} style={{ width: '100%', minHeight: '910px', border: 'none', }} />
                    </div>
                  )}
                </li>
              ))}
            </ul>
          )}
        </div>

        {/* Подтверждение удаления */}
        {docToDelete !== null && (
          <div style={{
            position: 'fixed',
            top: 0, left: 0, right: 0, bottom: 0,
            backgroundColor: 'rgba(0, 0, 0, 0.4)',
            display: 'flex', justifyContent: 'center', alignItems: 'center',
            zIndex: 1000
          }}>
            <div style={{ background: 'var(--background)', padding: '2rem', borderRadius: '0.5rem', width: '300px', textAlign: 'center' }}>
              <p style={{ fontSize: '20px', fontWeight: '600', color: 'var(--foreground)', padding: '1rem' }}>Удалить документ?</p>
              <div style={{ display: 'flex', justifyContent: 'space-around' }}>
                <button onClick={handleConfirmDelete} style={buttonStyle('var(--danger)')}>Удалить</button>
                <button onClick={() => setDocToDelete(null)} style={buttonStyle('var(--primary)')}>Отмена</button>
              </div>
            </div>
          </div>
        )}
      </main>
    </>
  );
}

const buttonStyle = (bg: string) => ({
  backgroundColor: bg,
  color: 'white',
  padding: '0.5rem 1rem',
  borderRadius: '0.375rem',
  border: 'none',
  cursor: 'pointer'
});

const filledIconButton = (bg: string) => ({
  backgroundColor: bg,
  border: 'none',
  borderRadius: '6px',
  width: '36px',
  height: '36px',
  color: 'white',
  fontSize: '1.2rem',
  cursor: 'pointer',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center'
});

interface ProfileFieldProps {
  label: string;
  name: keyof UserProfile;
  value: string;
  isEditing: boolean;
  onChange: (e: React.ChangeEvent<HTMLInputElement>) => void;
  type?: string;
}

function ProfileField({ label, name, value, isEditing, onChange, type = 'text' }: ProfileFieldProps) {
  return (
    <div style={{ display: 'grid', gridTemplateColumns: '200px 1fr', alignItems: 'center', gap: '1rem' }}>
      <label htmlFor={name}>{label}:</label>
      {isEditing ? (
        <input
          id={name}
          name={name}
          type={type}
          value={value}
          onChange={onChange}
          style={{
            padding: '8px 12px',
            borderRadius: '4px',
            border: '1px solid var(--background)',
            backgroundColor: 'var(--surface)',
            color: 'var(--foreground)',
            width: '100%'
          }}
        />
      ) : (
        <span>{value}</span>
      )}
    </div>
  );
}
