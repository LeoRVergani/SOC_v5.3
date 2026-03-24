
# 🛡️ SOC IP Analyzer

Ferramenta web para análise de IPs suspeitos, enriquecimento de dados e extração de informações a partir de prints de firewall/WAF.

---

## 🚀 Sobre o projeto

O **SOC IP Analyzer** foi desenvolvido para auxiliar analistas de segurança na investigação rápida de eventos, permitindo:

- 🔍 Consulta de reputação de IP (AbuseIPDB)
- 🌍 Enriquecimento de geolocalização (IPInfo)
- 🧠 Identificação de ASN e organização
- 🖼️ Extração de IPs a partir de imagens (OCR)
- ⚡ Geração de comandos (ex: Check Point)

---

## ▶️ Como iniciar o projeto

### ✅ Método recomendado (mais fácil)

1. Execute o arquivo:


```

start.bat

```

👉 Isso irá:
- Iniciar o servidor automaticamente
- Abrir o sistema no navegador (se configurado)

---

### ⚙️ Método manual

1. Instale as dependências:


```

pip install -r requirements.txt

```

2. Inicie o servidor:


```

python server.py

```

3. Acesse no navegador:


```

http://127.0.0.1:5000

```

---

## 🔑 Configuração da API (OBRIGATÓRIO)

Este projeto utiliza a API do AbuseIPDB para análise de reputação de IP.

### 📌 Como configurar:

1. Crie uma conta em:
👉 https://www.abuseipdb.com/

2. Gere sua API Key

3. Crie um arquivo chamado:


```

config.txt

```

4. Cole sua API Key dentro dele:


```

SUA_API_KEY_AQUI

```

---

⚠️ **IMPORTANTE:**
- Nunca compartilhe sua API Key
- Nunca suba o `config.txt` para o GitHub
- Use `.gitignore` para proteger

---

## 🔄 Atualização do sistema (update.bat)

Em breve, o projeto contará com um arquivo:


```

update.bat

```

### 🔧 Função:

- Atualizar automaticamente o projeto via Git
- Substituir arquivos antigos
- Instalar dependências (se necessário)
- Reiniciar o servidor

### ▶️ Como usar:

Basta executar:


```

update.bat

```

---

## 🖼️ OCR (Extração de IPs de imagem)

O sistema suporta leitura de imagens contendo logs de firewall/WAF.

### 📌 Requisitos:

- Tesseract OCR instalado

Download:
👉 https://github.com/tesseract-ocr/tesseract

### ⚙️ Caminho padrão:


```

C:\Program Files\Tesseract-OCR\tesseract.exe

```

---

## 🧱 Tecnologias utilizadas

- Python (Flask)
- JavaScript (Frontend)
- Tesseract OCR
- AbuseIPDB API
- IPInfo API

---

## ⚠️ Segurança

- Nunca exponha API Keys em repositórios públicos
- Sempre utilize arquivos externos (`config.txt` ou `.env`)
- Caso uma key seja exposta: **revogue imediatamente**

---

## 📌 Objetivo

Esta ferramenta foi criada para:

- Automatizar análise de incidentes
- Aumentar produtividade em SOC
- Facilitar investigação de IPs maliciosos

---

## 👨‍💻 Autor

Desenvolvido por **Leonardo Vergani**

---

## ⭐ Contribuição

Sinta-se à vontade para sugerir melhorias ou contribuir com o projeto.

---

## 🧠 Futuras melhorias

- Cache de consultas de IP
- Score de risco consolidado
- Suporte multi-API
- Interface mais avançada
- Auto-update integrado

---

## 💬 Se quiser melhorar ainda mais

Posso te entregar:

-   versão com badges (GitHub style)
    
-   versão com imagens do sistema
    
-   versão com instalação automática (installer .exe)
    
-   README em inglês também
    

Só falar 👍Claro — aqui está um **README.md profissional** pronto para seu projeto, com tudo que você pediu 👇

----------
# 🛡️ SOC IP Analyzer

Ferramenta web para análise de IPs suspeitos, enriquecimento de dados e extração de informações a partir de prints de firewall/WAF.

---

## 🚀 Sobre o projeto

O **SOC IP Analyzer** foi desenvolvido para auxiliar analistas de segurança na investigação rápida de eventos, permitindo:

- 🔍 Consulta de reputação de IP (AbuseIPDB)
- 🌍 Enriquecimento de geolocalização (IPInfo)
- 🧠 Identificação de ASN e organização
- 🖼️ Extração de IPs a partir de imagens (OCR)
- ⚡ Geração de comandos (ex: Check Point)

---

## ▶️ Como iniciar o projeto

### ✅ Método recomendado (mais fácil)

1. Execute o arquivo:


```

start.bat

```

👉 Isso irá:
- Iniciar o servidor automaticamente
- Abrir o sistema no navegador (se configurado)

---

### ⚙️ Método manual

1. Instale as dependências:


```

pip install -r requirements.txt

```

2. Inicie o servidor:


```

python server.py

```

3. Acesse no navegador:


```

http://127.0.0.1:5000

```

---

## 🔑 Configuração da API (OBRIGATÓRIO)

Este projeto utiliza a API do AbuseIPDB para análise de reputação de IP.

### 📌 Como configurar:

1. Crie uma conta em:
👉 https://www.abuseipdb.com/

2. Gere sua API Key

3. Crie um arquivo chamado:


```

config.txt

```

4. Cole sua API Key dentro dele:


```

SUA_API_KEY_AQUI

```

---

⚠️ **IMPORTANTE:**
- Nunca compartilhe sua API Key
- Nunca suba o `config.txt` para o GitHub
- Use `.gitignore` para proteger

---

## 🔄 Atualização do sistema (update.bat)

Em breve, o projeto contará com um arquivo:


```

update.bat

```

### 🔧 Função:

- Atualizar automaticamente o projeto via Git
- Substituir arquivos antigos
- Instalar dependências (se necessário)
- Reiniciar o servidor

### ▶️ Como usar:

Basta executar:


```

update.bat

```

---

## 🖼️ OCR (Extração de IPs de imagem)

O sistema suporta leitura de imagens contendo logs de firewall/WAF.

### 📌 Requisitos:

- Tesseract OCR instalado

Download:
👉 https://github.com/tesseract-ocr/tesseract

### ⚙️ Caminho padrão:


```

C:\Program Files\Tesseract-OCR\tesseract.exe

```

---

## 🧱 Tecnologias utilizadas

- Python (Flask)
- JavaScript (Frontend)
- Tesseract OCR
- AbuseIPDB API
- IPInfo API

---

## ⚠️ Segurança

- Nunca exponha API Keys em repositórios públicos
- Sempre utilize arquivos externos (`config.txt` ou `.env`)
- Caso uma key seja exposta: **revogue imediatamente**

---

## 📌 Objetivo

Esta ferramenta foi criada para:

- Automatizar análise de incidentes
- Aumentar produtividade em SOC
- Facilitar investigação de IPs maliciosos

---

## 👨‍💻 Autor

Desenvolvido por **Leonardo Vergani**

---

## ⭐ Contribuição

Sinta-se à vontade para sugerir melhorias ou contribuir com o projeto.
