'use client';

import { useState, useEffect } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import Header from '../components/header';

export default function LoginPage() {
  const [formData, setFormData] = useState({ email: '', password: '' });
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [successMessage, setSuccessMessage] = useState('');
  const router = useRouter();
  const searchParams = useSearchParams();

  useEffect(() => {
    if (searchParams.get('registered') === 'true') {
      setSuccessMessage('Регистрация прошла успешно! Теперь вы можете войти.');
      router.replace('/login');
    }

    let savedDeviceId = localStorage.getItem('device_id');
    if (!savedDeviceId) {
      savedDeviceId = crypto.randomUUID();
      localStorage.setItem('device_id', savedDeviceId);
    }
  }, [searchParams, router]);

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    setIsLoading(true);

    try {
      const device_id = localStorage.getItem('device_id');
      if (!device_id) throw new Error('Ошибка генерации идентификатора устройства');

      const response = await fetch('http://localhost:8000/tokens', {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          email: formData.email,
          password: formData.password,
          device_id,
        }),
      });

      const text = await response.text();

      if (!response.ok) {
        try {
          const json = JSON.parse(text);
          if (json?.detail?.message) {
            setError(json.detail.message);
          } else {
            setError('Ошибка входа');
          }
        } catch {
          setError(text || 'Ошибка входа');
        }
        return;
      }

      const data = JSON.parse(text);
      if (!data.access_token) throw new Error('Токен не получен');

      localStorage.setItem('authToken', data.access_token);
      router.push('/');
    } catch (err: any) {
      setError(err.message || 'Неизвестная ошибка');
    } finally {
      setIsLoading(false);
    }
  };

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
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
        <h1 style={{ fontSize: '2rem', marginBottom: '1.5rem' }}>Вход</h1>

        {successMessage && (
          <div
            style={{
              color: 'var(--success)',
              marginBottom: '1rem',
              padding: '0.75rem',
              backgroundColor: 'rgba(40, 167, 69, 0.1)',
              borderRadius: '0.375rem',
              maxWidth: '300px',
              textAlign: 'center',
            }}
          >
            {successMessage}
          </div>
        )}

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
          onSubmit={handleLogin}
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
            placeholder="Пароль"
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
              backgroundColor: 'var(--primary)',
              color: 'white',
              padding: '0.75rem',
              border: 'none',
              borderRadius: '0.375rem',
              fontSize: '1rem',
              fontWeight: '500',
              cursor: isLoading ? 'not-allowed' : 'pointer',
              opacity: isLoading ? 0.7 : 1,
            }}
          >
            {isLoading ? 'Вход...' : 'Войти'}
          </button>
        </form>
      </main>
    </>
  );
}
