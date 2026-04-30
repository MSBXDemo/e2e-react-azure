# E2e-react-azure

E2E test: React on Azure

## Stack

| Property | Value |
|----------|-------|
| **Framework** | React 18 + TypeScript + Vite |
| **Node.js** | 22 |
| **Cloud** | AZURE |
| **Cost Center** | `MC-100042` |
| **Owner** | group:default/platform-engineering |

## Quick Start

```bash
npm install
npm run dev     # http://localhost:3000
npm run build   # production build
```

## Docker

```bash
docker build -t e2e-react-azure .
docker run -p 8080:8080 e2e-react-azure
```
