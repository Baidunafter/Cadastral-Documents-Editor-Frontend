'use client';

import Link from 'next/link';
import Header from './components/header';

const buttonList = [
  { title: '📝 Акт обследования', href: '/inspection' },
  { title: '📐 Межевой план' },
  { title: '🗺️ Схема расположения земельного участка на КПТ' },
  { title: '📊 Проект межевания земельных участков' },
  { title: '🏢 Технический план здания' },
  { title: '🏗️ Технический план сооружения' },
  { title: '🚧 Технический план объекта незавершенного строительства' },
  { title: '🚪 Технический план помещения' },
  { title: '🚙 Технический план машино-места' },
  { title: '🏠 Технический план единого недвижимого комплекса' },
  { title: '🛤️ Технический план линейного сооружения' },
  { title: '🧭 Карта-план объекта землеустройства' },
  { title: '🌐 Карта-план территории' },
  { title: '📄 Документ, воспроизводящий сведения о зонах и границах' },
  { title: '📬 Извещение о согласовании границы земельного участка' },
  { title: '✉️ Сопроводительное письмо для акта согласования' },
  { title: '📋 Декларация об объекте недвижимости' },
  { title: '🏗️ Уведомления о строительстве или реконструкции' },
  { title: '❌ Уведомления о планируемом/завершенном сносе объекта капитального строительства' },
  { title: '💰 Справка о кадастровой стоимости' },
  { title: '📉 Справка о прекращении существования объекта учета' },
];

export default function Home() {
  return (
    <>
      <Header />

      <main
        style={{
          minHeight: '100vh',
          padding: '6rem 1rem 1rem 2rem',
          backgroundColor: 'var(--page-background)',
          color: 'var(--foreground)',
        }}
      >
        <h1 style={{ fontSize: '2rem', marginBottom: '2rem', textAlign: 'center' }}>
          Главная страница
        </h1>

        <div style={{ display: 'flex', justifyContent: 'center' }}>
          <div
            style={{
              width: '100%',
              maxWidth: '1600px',
              display: 'grid',
              gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))',
              gap: '1.5rem',
            }}
          >
            {buttonList.map(({ title, href }, index) => {
              const content = (
                <div
                  style={buttonStyle}
                  onMouseDown={(e) => applyActiveStyle(e.currentTarget)}
                  onMouseUp={(e) => resetStyle(e.currentTarget)}
                  onMouseEnter={(e) => (e.currentTarget.style.backgroundColor = 'var(--surface)')}
                  onMouseLeave={(e) => (e.currentTarget.style.backgroundColor = 'var(--background)')}
                >
                  {title}
                </div>
              );

              return href ? (
                <Link key={index} href={href} style={{ textDecoration: 'none' }}>
                  {content}
                </Link>
              ) : (
                <div key={index}>{content}</div>
              );
            })}
          </div>
        </div>
      </main>
    </>
  );
}

const buttonStyle: React.CSSProperties = {
  width: '100%',
  aspectRatio: '1',
  backgroundColor: 'var(--background)',
  border: '1px solid var(--background)',
  borderRadius: '12px',
  fontSize: '1.1rem',
  fontWeight: 600,
  color: 'var(--foreground)',
  cursor: 'pointer',
  boxShadow: '0 2px 6px rgba(0,0,0,0.1)',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
  transition: 'transform 0.15s ease, box-shadow 0.15s ease, background-color 0.15s ease',
  padding: '1rem',
  textAlign: 'center',
  wordBreak: 'break-word',
  lineHeight: 1.2,
  textWrap: 'balance',
};

function applyActiveStyle(element: HTMLElement) {
  element.style.transform = 'scale(0.96)';
  element.style.boxShadow = '0 1px 3px rgba(0,0,0,0.08)';
}

function resetStyle(element: HTMLElement) {
  element.style.transform = 'scale(1)';
  element.style.boxShadow = '0 2px 6px rgba(0,0,0,0.1)';
}
