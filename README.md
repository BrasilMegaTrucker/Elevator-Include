# elevator.inc
Criação de Elevadores

# Requisitos
* SA-MP Server (0.3.7 é recomendável)
* Plugin Streamer (2.9.4 é recomendável)

# Funções
- AddElevator - Criar (ou adicionar) um elevador (avá)
- IsValidElevator - Verificar se o elevador é válido
- DestroyElevator - Destruir elevador
- GetElevatorName - Obter o nome de um elevador
- GetElevatorPos - Obter a posição de um elevador
- GetElevatorOnFloor - Obter o andar de um elevador
- GetElevatorPoolSize - Obtem o máximo de elevadores do jogo
- AddFloorToElevator - Adicionar um andar ao elevador
- CallElevatorToFloor - Chamar o elevador (utilizando muito internamente)
- SelectFloorOnElevator - Selecionar o elevador (praticamente o mesmo uso da função acima)
- OpenPortsElevator - Abrir portas do elevador (não é preciso chama-la)
- ClosePortsElevator - Fechar portas do elevador (não é preciso chama-la)
- GetMaxFloorElevator - Obtem o máximo de andares disponíveis por elevador
- GetFloorNameForElevator - Obtem o nome do andar
- IsPlayerInElevator - Verifica se o jogador está em um elevador
- GetPlayerFrontElevator - Obtem o id do elevador que está bem na frente do jogador

# Callbacks
- OnElevatorCalled - Quando um elevador é chamado
- OnElevatorStoped - Quando um elevador para em algum andar
- OnPlayerEnterElevator - Quando um jogador entra em um elevador
- OnPlayerIsFrontElevator - Quando um jogador fica na frente de um elevador
- OnPlayerLeaveElevator - Quando um jogador sai de um elevador
- OnPlayerLeaveFrontElevator - Quando um jogador sai da frente de um elevador
