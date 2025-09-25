#  Goal Tracker (Rastreador de Metas Diárias)

Um aplicativo simples e direto ao ponto, desenvolvido em Flutter, que permite ao usuário rastrear metas diárias através de um contador de pontuação.

Originalmente concebido como um contador de fluxo de pessoas para controle de capacidade durante a pandemia (2021), o projeto foi refatorado para ter uma utilidade contínua como um rastreador de produtividade, exercícios ou hidratação.

##  Funcionalidades

* Contagem Simples: Botões grandes de +1 e -1 para um registro rápido.

* Meta Diária (Goal): A meta pode ser facilmente definida no código (dailyGoal = 10) e o aplicativo fornece feedback visual sobre o progresso.

* Feedback Visual: A cor do contador muda e uma mensagem de celebração aparece quando a meta é alcançada.

* Controle de Estado: O botão de decremento é desativado quando o contador chega a zero, evitando números negativos.

* Reset Rápido: Botão dedicado para zerar a contagem e recomeçar um novo dia.

##  Tecnologias Utilizadas

* **Framework:** Flutter

* **Linguagem:** Dart

* **Arquitetura:** StatefulWidget simples para gerenciar o estado local (count).

* **Design:** Material 3 (Material Design moderno).

##  Instalação e Execução

* Pré-requisitos

Certifique-se de ter o Flutter instalado e configurado corretamente (incluindo Xcode e Android Studio). Você pode verificar seu ambiente com:

bash
flutter doctor


##  Passos para Rodar o App

1. Clone ou Baixe o código do projeto.

2. Abra o Terminal na pasta raiz do projeto.

3. Instale as dependências (se houver alguma no futuro):

    ```
      bash
      flutter doctor
4. Inicie um Emulador/Simulador (iOS, Android, ou Chrome para Web).

5. Execute o aplicativo:

       bash
       flutter run

## Como Usar o Código
* O arquivo principal é o lib/main.dart. Para alterar a meta diária, basta modificar a variável:

      class _HomePageState extends State<HomePage> {
      int count = 0;
      final int dailyGoal = 10; // << Mude este valor para definir uma nova meta!
      // ...
      }

##  Licença

🧑‍💻 Contribuição
Contribuições são bem-vindas! Se você encontrou um bug, tem uma sugestão de recurso ou gostaria de melhorar o código, sinta-se à vontade para abrir uma issue ou enviar um pull request.

📧 Contato
Samuel Freitas - samuelSoftwareEngineer@proton.me

Licença
Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE para mais detalhes.

Copyright (c) 2025 Samuel freitas