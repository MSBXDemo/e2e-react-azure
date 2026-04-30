import React from 'react';

const App: React.FC = () => {
  return (
    <div className="app">
      <header className="app-header">
        <h1>E2e-react-azure</h1>
        <p>E2E test: React on Azure</p>
        <p className="meta">
          Cloud: <strong>AZURE</strong>
          {' | '}
          Cost Center: <strong>MC-100042</strong>
        </p>
      </header>
    </div>
  );
};

export default App;
