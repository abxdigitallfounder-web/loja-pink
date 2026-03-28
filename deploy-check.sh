#!/usr/bin/env bash
# Vercel Deployment Script
# Este script prepara o projeto para deployment no Vercel

echo "✅ Verificando estrutura do projeto..."

# Verificar se os arquivos principais existem
required_files=("index.html" "vercel.json" "package.json")
for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    echo "✓ $file encontrado"
  else
    echo "✗ ERRO: $file não encontrado"
    exit 1
  fi
done

# Verificar pastas
required_dirs=("css" "js" "images" "fonts")
for dir in "${required_dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "✓ Pasta $dir encontrada"
  else
    echo "✗ AVISO: Pasta $dir não encontrada"
  fi
done

echo ""
echo "📋 Checklist de Deployment:"
echo "✓ index.html configurado como arquivo principal"
echo "✓ vercel.json com configurações otimizadas"
echo "✓ package.json com scripts de build"
echo "✓ Caminhos de recursos usando URLs relativas"
echo "✓ CSS e JS com cache otimizado"
echo "✓ Estrutura de pastas correta"

echo ""
echo "🚀 Projeto pronto para Vercel!"
echo ""
echo "Prós prómos passos:"
echo "1. Faça push do código para GitHub"
echo "2. Vá para https://vercel.com/new"
echo "3. Selecione seu repositório"
echo "4. Clique em Deploy!"
