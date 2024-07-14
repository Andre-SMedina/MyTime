# mytime

My Time

O My Time é uma aplicação Flutter desenvolvida para gerenciar suas atividades diárias. Com ele, você pode iniciar e finalizar registros de tempo e visualizar o histórico de atividades.

Funcionalidades
  - Iniciar e finalizar registros de tempo.
  - Visualizar registros de tempo do dia atual.
  - Exibir o total de tempo registrado no dia.
  - Visualizar histórico de atividades passadas.
  - Limpar todos os registros salvos.
Tecnologias Utilizadas
  - Flutter
  - Dart
  - SharedPreferences para persistência de dados
  - intl para formatação de datas e horas
Uso
  - Interface Principal
  - Iniciar/Finalizar Registros: Use o botão principal para iniciar ou finalizar um registro de tempo. O botão mudará de cor (verde para iniciar, vermelho para     finalizar).
  - Visualizar Registros de Hoje: Os registros de tempo do dia atual serão exibidos, juntamente com o total de tempo registrado.
  - Histórico: Abaixo dos registros de hoje, você pode visualizar o histórico de atividades passadas.
Limpar Dados
  - Limpar Todos os Registros: Para limpar todos os dados salvos, clique no ícone de lixeira na barra de ações e confirme a exclusão.

Estrutura do Projeto
lib
  main.dart: Ponto de entrada da aplicação.
  screens/
    home_screen.dart: Tela principal do aplicativo.
  models/
    entry.dart: Classe que representa um registro de tempo.
    history_entry.dart: Classe que representa o histórico do tempo.
  services/
    storage_service.dart: Serviço para gerenciar o armazenamento de dados no SharedPreferences.
    multi_service.dart: Serviço para calcular o tempo total e formatar o tempo.
  utils/
    dialog_utils.dart: Mostra uma mensagem de confirmação para excluir todos os registros.
  widgets/
    entry_list.dart: Gera uma lista com todas os registros de horas do dia.
