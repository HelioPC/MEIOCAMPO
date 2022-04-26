{-
    All functions related to menu goes here.
-}

menu :: IO ()
menu = do
    putStrLn "digite a opcao que deseja "
    putStrLn"1 - Jogo "
    putStrLn "2 - Equipas" 
    putStrLn "3 – Estatistica "
    putStrLn "4 – Sair "    
    c <- getChar
    case c of
        '1' -> jogo
        '2' -> equipas
        '3' -> estatistica
        '4' -> print "saindo..." 
    putChar c


jogo :: IO ()
jogo = do
    putStrLn "digite a opcao que deseja "
    putStrLn "1 - Cadastrar jogos "
    putStrLn "2 - Jogo a decorrer "
    putStrLn "3 - Listar Todos Resultados "
    putStrLn "4 - Listar Resultado de um jogo "
    putStrLn "5 - voltar "
    c <- getChar
    case c of
        --'1' -> cadastrarJogos
        '2' -> jogoDirecto
        --'3' -> listarResultados
        --'4' -> listarResultadoJogo
        '5' -> menu
    putChar 'c'


equipas :: IO ()
equipas = do
    putStrLn "digite a opcao que deseja "
    putStrLn "1 - Cadastrar Jogadores "
    putStrLn "2 - Cadastrar Treinador" 
    putStrLn "3 - Cadastrar Equipa" 
    putStrLn "4 - Listar Jogadores" 
    putStrLn "5 - Listar Treinadores" 
    putStrLn "6 - Listar equipas "
    putStrLn "7 - Listar Uma equipa "
    putStrLn "8 - Ver Pontuação" 
    putStrLn "9 - Ver Pontuacão de uma equipa"
    putStrLn "10 - Sair"
    c <- getChar
    case c of
        --'1' -> cadastrarJogadores
        --'2' -> cadastrarTreinadores
        --'3' -> cadastrarEquipa
        --'4' -> listarJogadores
        --'5' -> listarTreinadores
        --'6' -> listarEquipas
        --'7' -> listarEquipa
        --'8' -> verPontuaçãoGeral
        --'9' -> verPontuacãoEquipa
        '0' -> menu
    putChar 'c'

estatistica :: IO()
estatistica = do
    putStrLn "--digite a opcao que deseja-- "
    putStrLn "1 - Trabela Classificativa "
    putStrLn "2 - Vencedor "
    putStrLn "3 - Melhor  Marcador "
    putStrLn "4 - Sair"
    c <- getChar
    case c of
       -- '1' -> classificacao
       -- '2' -> vencedor
       -- '3' -> melhorMarcador
        '4' -> menu        
    putChar 'c'

jogoDirecto :: IO()
jogoDirecto = do
   putStrLn "--digite a opcao que deseja-- "
   putStrLn "1 - Iniciar "
   putStrLn "2 – Terminar jogo"
   putStrLn "3 – Atribuir Golos "
   putStrLn "4 – Estatistica do jogo"
   putStrLn " 5 – Sair"
   c <- getChar
   case c of
       -- '1' -> iniciar
       -- '2' -> terminarJogos
       -- '3' -> atribuirGolos
       -- '4' -> esatisticaJogo         
        '5' -> jogo        
   putChar 'c'
