'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';

export default function Header() {
  const router = useRouter();
  const [theme, setTheme] = useState<'light' | 'dark'>('light');
  const [isAuthenticated, setIsAuthenticated] = useState<boolean>(false);

  // Переключение темы
  const toggleTheme = () => {
    const newTheme = theme === 'light' ? 'dark' : 'light';
    setTheme(newTheme);
    document.documentElement.setAttribute('data-theme', newTheme);
    localStorage.setItem('theme', newTheme);
  };

  // Выход из аккаунта с удалением токена на сервере
  const handleLogout = async () => {
    const access_token = localStorage.getItem('authToken');
    const device_id = localStorage.getItem('device_id');

    if (access_token && device_id) {
      try {
        await fetch('http://localhost:8000/tokens', {
          method: 'DELETE',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ access_token, device_id })
        });
      } catch (error) {
        console.error('Ошибка при выходе:', error);
      }
    }

    localStorage.removeItem('authToken');
    setIsAuthenticated(false);
    router.push('/login');
  };

  // Переход в профиль
  const goToProfile = () => {
    router.push('/profile');
  };

  // Проверка авторизации и восстановление темы
  useEffect(() => {
    const authToken = localStorage.getItem('authToken');
    if (authToken) {
      setIsAuthenticated(true);
    }
    const savedTheme = localStorage.getItem('theme') as 'light' | 'dark' | null;
    if (savedTheme) {
      setTheme(savedTheme);
      document.documentElement.setAttribute('data-theme', savedTheme);
    }
  }, []);

  return (
    <header
      style={{
        display: 'flex',
        justifyContent: 'space-between',
        alignItems: 'center',
        padding: '1rem',
        backgroundColor: 'var(--background)',
        boxShadow: '0 2px 4px rgba(0, 0, 0, 0.1)',
        zIndex: 20,
      }}
    >
      <Link
        href="/"
        style={{
          fontSize: '1.5rem',
          fontWeight: 'bold',
          color: 'var(--foreground)',
          textDecoration: 'none',
        }}
      >
        Редактор Кадастровых Документов
      </Link>

      <div style={{ display: 'flex', gap: '0.75rem' }}>
        {isAuthenticated ? (
          <>
            <button
              onClick={goToProfile}
              style={{
                backgroundColor: 'var(--primary)',
                color: 'white',
                padding: '0.5rem 1rem',
                borderRadius: '0.375rem',
                border: 'none',
                cursor: 'pointer',
              }}
            >
              Профиль
            </button>
            <button
              onClick={handleLogout}
              style={{
                backgroundColor: 'var(--danger)',
                color: 'white',
                padding: '0.5rem 1rem',
                borderRadius: '0.375rem',
                border: 'none',
                cursor: 'pointer',
              }}
            >
              Выйти
            </button>
          </>
        ) : (
          <>
            <button
              onClick={() => router.push('/login')}
              style={{
                backgroundColor: 'var(--primary)',
                color: 'white',
                padding: '0.5rem 1rem',
                borderRadius: '0.375rem',
                border: 'none',
                cursor: 'pointer',
              }}
            >
              Вход
            </button>
            <button
              onClick={() => router.push('/register')}
              style={{
                backgroundColor: 'var(--success)',
                color: 'white',
                padding: '0.5rem 1rem',
                borderRadius: '0.375rem',
                border: 'none',
                cursor: 'pointer',
              }}
            >
              Регистрация
            </button>
          </>
        )}

        <button
          onClick={toggleTheme}
          style={{
            padding: '0.5rem 1rem',
            backgroundColor: 'var(--primary)',
            color: 'white',
            borderRadius: '0.375rem',
            border: 'none',
            cursor: 'pointer',
          }}
        >
          Переключить тему
        </button>
      </div>
    </header>
  );
}
