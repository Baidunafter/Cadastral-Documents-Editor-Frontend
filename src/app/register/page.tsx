'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import Header from '../components/header';

export default function RegisterPage() {
  const [formData, setFormData] = useState({ email: '', password: '' });
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const router = useRouter();

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const handleRegister = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    setIsLoading(true);

    try {
      const response = await fetch('http://localhost:8000/credentials', {
        method: 'POST',
        headers: {
          accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(formData),
      });

      if (response.ok) {
        router.push('/login?registered=true');
        return;
      }

      const contentType = response.headers.get('content-type') || '';
      if (contentType.includes('application/json')) {
        const data = await response.json();
        if (typeof data.detail === 'object' && data.detail.message) {
          setError(data.detail.message);
        } else {
          setError('Произошла ошибка при регистрации.');
        }
      } else {
        const text = await response.text();
        setError(text || 'Неизвестная ошибка');
      }
    } catch {
      setError('Ошибка соединения с сервером');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <Header />
      <main
        style={{
          minHeight: '100vh',
          display: 'flex',
          flexDirection: 'column',
          justifyContent: 'center',
          alignItems: 'center',
          backgroundColor: 'var(--page-background)',
          padding: '6rem 1rem 1rem',
          color: 'var(--foreground)',
        }}
      >
        <h1 style={{ fontSize: '2rem', marginBottom: '1.5rem' }}>Регистрация</h1>

        {error && (
          <div
            style={{
              color: 'var(--danger)',
              marginBottom: '1rem',
              padding: '0.75rem',
              backgroundColor: 'rgba(220, 53, 69, 0.1)',
              borderRadius: '0.375rem',
              maxWidth: '300px',
              textAlign: 'center',
            }}
          >
            {error}
          </div>
        )}

        <form
          onSubmit={handleRegister}
          style={{
            display: 'flex',
            flexDirection: 'column',
            gap: '1rem',
            width: '300px',
          }}
        >
          <input
            type="email"
            name="email"
            placeholder="Email"
            value={formData.email}
            onChange={handleChange}
            required
            disabled={isLoading}
            style={{
              padding: '0.5rem',
              fontSize: '1rem',
              borderRadius: '0.375rem',
              border: '1px solid var(--background)',
              backgroundColor: 'var(--background)',
              color: 'var(--foreground)',
            }}
          />
          <input
            type="password"
            name="password"
            placeholder="Пароль (минимум 6 символов)"
            value={formData.password}
            onChange={handleChange}
            required
            minLength={6}
            disabled={isLoading}
            style={{
              padding: '0.5rem',
              fontSize: '1rem',
              borderRadius: '0.375rem',
              border: '1px solid var(--background)',
              backgroundColor: 'var(--background)',
              color: 'var(--foreground)',
            }}
          />
          <button
            type="submit"
            disabled={isLoading}
            style={{
              backgroundColor: 'var(--success)',
              color: 'white',
              padding: '0.75rem',
              border: 'none',
              borderRadius: '0.375rem',
              fontSize: '1rem',
              cursor: isLoading ? 'not-allowed' : 'pointer',
              opacity: isLoading ? 0.7 : 1,
            }}
          >
            {isLoading ? 'Регистрация...' : 'Зарегистрироваться'}
          </button>
        </form>
      </main>
    </>
  );
}
