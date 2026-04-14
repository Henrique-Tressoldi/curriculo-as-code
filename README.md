# 🚀 Currículo as Code (Continuous Deployment)

> [!TIP]
> 📄 **[CLIQUE AQUI PARA ACESSAR OU BAIXAR MEU CURRÍCULO](./Curriculo_Henrique_Tressoldi.pdf)** 

Este repositório é a "Infraestrutura como Código" do meu currículo.
Nele, utilizo técnicas de **AI-Augmented Engineering** e **Pipeline de CI/CD** para garantir que a versão mais recente do meu perfil profissional (gerenciada na minha base de dados central `GEMINI.md`) seja automaticamente compilada e renderizada.

## 🛠️ Tecnologias Utilizadas
- **Typst**: Sistema avançado e performático de formatação e renderização de documentos (escrito em Rust) para construção do meu layout de currículo de forma declarativa (`main.typ` & `template.typ`).
- **GitHub Actions**: Pipeline de Automação / CI/CD (Continuous Deployment) que verifica as atualizações neste repositório.
- **LLMs (Gemini / Claude)**: Para parse de Vagas (Job Descriptions) contra a base estruturada (`GEMINI.md`). ***(Work In Progress: em breve integração automática no workflow)***.

## ⚙️ Como funciona?
1. Toda vez que faço o commit de uma atualização em `.typ` ou na estrutura base.
2. O GitHub Actions entra em ação, instalando o ambiente do **Typst**.
3. Ele renderiza automaticamente um PDF otimizado e elegante.
4. O robô automaticamente **sincroniza o arquivo PDF compilado na raiz deste repositório**, garantindo que quem acessar o link acima sempre baixe a versão do currículo compilada no exato momento da última atualização de código.

*Projeto criado por Henrique Tressoldi.*
