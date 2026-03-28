# LUMEOR BEAUTY - Organic Collagen Mask

Loja online de produtos de beleza LUMEOR - Máscara de Colágeno Orgânico, o Segredo de Beleza Coreano.

## 🚀 Deployment no Vercel

### Pré-requisitos
- Conta no [Vercel](https://vercel.com)
- GitHub/GitLab/Bitbucket (para conectar o repositório)
- Git instalado localmente

### Passos para Deploy

#### 1. Inicializar Git (se não estiver ainda)
```bash
git init
git add .
git commit -m "Initial commit: LUMEOR Beauty website"
```

#### 2. Criar repositório no GitHub
- Acesse [github.com/new](https://github.com/new)
- Crie um novo repositório chamado `lumeor-beauty`
- Siga as instruções para fazer push do código

```bash
git remote add origin https://github.com/seu-usuario/lumeor-beauty.git
git branch -M main
git push -u origin main
```

#### 3. Deploy no Vercel
**Opção A: Via Interface Web (Recomendado)**
1. Acesse [vercel.com/new](https://vercel.com/new)
2. Clique em "Import Git Repository"
3. Selecione seu repositório `lumeor-beauty`
4. Vercel detectará automaticamente como projeto estático
5. Clique em "Deploy"

**Opção B: Via CLI**
```bash
npm i -g vercel
vercel
```
Siga as instruções no terminal.

### Configurações Automáticas
O arquivo `vercel.json` já contém:
- ✅ Routing automático de URLs para index.html (SPA-friendly)
- ✅ Cache otimizado para CSS, JS, Fonts (1 ano)
- ✅ Cache otimizado para imagens (1 dia)
- ✅ Framework detectado como HTML estático

### URLs de Produção
Após deploy bem-sucedido:
- **URL Principal**: `https://lumeor-beauty.vercel.app` (padrão)
- **URL Personalizada**: Configure domínio próprio nas configurações do Vercel

### Domínio Personalizado
1. Vá para configurações do projeto no Vercel
2. Clique em "Domains"
3. Adicione seu domínio personalizado
4. Siga as instruções de DNS

### Estrutura do Projeto
```
lumeor-beauty/
├── index.html              # Página principal
├── bundle-selector.html    # Componente de seletor de bundles
├── package.json            # Metadados do projeto
├── vercel.json             # Configuração do Vercel
├── .gitignore              # Arquivos ignorados no Git
└── [pastas de recursos]
    ├── css/                # Folhas de estilo
    ├── js/                 # Scripts JavaScript
    ├── images/             # Imagens de produtos
    ├── fonts/              # Fontes customizadas
    └── media/              # Mídia adicional
```

### Variáveis de Ambiente (se necessário)
As variáveis de ambiente podem ser configuradas no dashboard do Vercel:
1. Vá para projeto → Settings → Environment Variables
2. Adicione suas variáveis

### Monitoramento e Analytics
- Acesse o dashboard do Vercel para:
  - ✅ Estatísticas de performance
  - ✅ Uso de banda
  - ✅ Logs de deployment
  - ✅ Histórico de deploys

### Troubleshooting

**Problema**: Assets não carregam
- **Solução**: Verifique se os caminhos no index.html são relativos (ex: `css/style.css`, não `/css/style.css`)

**Problema**: Página em branco
- **Solução**: Verifique o console e logs do Vercel para erros JavaScript

**Problema**: Routes não funcionam
- **Solução**: O `vercel.json` já contém rewrite automático - verifique se `index.html` está na raiz

### Desenvolvimento Local
```bash
# Inicie servidor local
npm run dev

# Ou use Python
python -m http.server 8000
```
Acesse em `http://localhost:8000`

### Otimizações Recomendadas
- [ ] Adicionar meta tags e descrições para SEO
- [ ] Implementar analytics (Google Analytics, Clarity)
- [ ] Minificar CSS/JS em produção
- [ ] Adicionar lazyloading para imagens
- [ ] Implementar service worker para PWA

### Suporte
- 📧 Documentação Vercel: https://vercel.com/docs
- 📧 Suporte: https://vercel.com/support

---

**Status**: ✅ Pronto para produção no Vercel
**Última atualização**: 27/03/2026
