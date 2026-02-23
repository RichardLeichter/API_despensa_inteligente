🍎 API de Despensa Inteligente (Anti-Desperdício)

Uma API RESTful desenvolvida em Ruby para gerenciar estoques domésticos, com foco especial no controle de validade de itens perecíveis para evitar desperdício.

🚀 Como Funciona

Este projeto resolve o problema comum de esquecer alimentos no fundo da despensa. Através de uma interface simples, você registra o que comprou e a API monitora automaticamente o que está perto de vencer.
✨ Funcionalidades Principais

    📦 Gestão de Inventário: Adicione, atualize e remova itens do seu depósito.

    📅 Controle de Validade: O sistema analisa a data de vencimento e categoriza os itens.

    ⚠️ Alertas Automáticos: Endpoint dedicado (/alertas) que lista tudo o que vence nos próximos 7 dias.

    📋 Lista de Compras: Gera automaticamente uma lista baseada em itens que estão com estoque baixo.

    💾 Persistência Local: Todos os dados são salvos em um arquivo JSON local (estoque.json).

💻 Tecnologias Utilizadas

    Linguagem: Ruby 3.x
    Framework: Sinatra (Micro-framework web)
    Gerenciador de Dependências: Bundler
    Formato de Dados: JSON

🛠️ Como Instalar e Rodar
1️⃣ Pré-requisitos

Certifique-se de ter o Ruby e o Bundler instalados no seu Linux:
Bash

ruby -v
gem install bundler

2️⃣ Clonar e Instalar
Bash

git clone https://github.com/RichardLeichter/API_despensa_inteligente.git

bundle install

3️⃣ Executar a API
Bash

bundle exec ruby app.rb

👨‍💻 Autor
Desenvolvido por @Richard_leichter