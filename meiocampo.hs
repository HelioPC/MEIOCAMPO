module MeioCampo where

type Nome = String
type Codigo = Int
type Altura = Float
type Peso = Float
type Genero = Char
type Idade = Int
type Data = (Int, Int, Int)
type Titulos = Int
type Golos = Int
type Posicao = String
type Treinador = (Codigo, Nome, Altura, Peso, Genero, Idade)
type Jogador = (Codigo, Nome, Altura, Peso, Genero, Idade, Golos, Posicao)
type Equipa = (Nome, Tempo, Titulos,[Jogador], Treinador)
type TempoDuracao = (Data, Data)
type Tempo = String
type Jogo = ((Equipa, Golos), (Equipa, Golos))
type Jornada = [Jogo]
type Jornadas = [Jornada]  


 

  -- Que verifica se nenhuma equipa joga com ela própria. 
mesmaEquipa :: Jornada -> Bool
mesmaEquipa [] = False
mesmaEquipa (x:s) = if ((fst(fst x)) == (fst(snd x))) then True
                         else mesmaEquipa s

--  Que verifica se nenhuma equipa joga duas vezes com a mesma equipa.  
jogoRepetido :: Jornada -> Bool
jogoRepetido [] = True
jogoRepetido(x:s) = if(x== head(s)) then False
                         else jogoRepetido s 

-- equipas :: Jornada -> [Equipa] – Que lista todas as equipas que participam de uma jornada 
equipas :: Jornada -> [Equipa] 
equipas [] = []
equipas (x:s) = [] ++ [(fst(fst(x)))] ++ equipas s


--4. empates :: Jornada -> [(Equipa, Equipa)] – Que da a lista das equipas que empataram numa jornada
--empates :: Jornada -> [(Equipa, Equipa)]
--empates [] = []
--empates (x:s) = if(fst(snd(x)) == snd(snd(x))) then  [] ++ [((fst(fst(x))),(snd(fst(x))))] ++ empates s
  --                  else empates s

--5. pontos :: Jornada -> [(Equipa, Int)] – Que calcula os pontos que uma equipa teve numa jornada
  --   ( vitctória – 3 pontos, derrota – 0 ponto e empate – 1 ponto).  

--6.  – Que retorna todos os jogadores que pertencem a uma equipa. 
jogadores :: Equipa -> [Jogador]
jogadores (a, b, c,[], f) = [] 
jogadores (a, b, c,(d:e), f) = [] ++ [d] ++ jogadores (a, b, c,(e), f)
 


--7. treinador :: Treinador -> [Equipa] – Que retorna todas equipas que um técnico já treinou.  
