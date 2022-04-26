module Cadastro where

import MeioCampo
import System.IO -- WriteMode, AppendMode, ReadMode, hPutStr, hFlush, nClose, openFile, hIsEOF e hGetLine
import System.IO.Error -- ioError, isDoesNotExistError
import Control.Exception -- catch


escreverNoArquivo::String->String->IO ()
escreverNoArquivo caminho conteudo = do
                                        arquivo <- openFile caminho WriteMode;
                                        hPutStrLn arquivo conteudo;
                                        hFlush arquivo;
                                        hClose arquivo;



-- ****************** LISTA TODOS CADASTROS EXISTENTE NO FICHEIRO -------------------
listLinhasClientes ::[(Int, String, Float, Float,Char,Int,Int,String)]->String
listLinhasClientes []= ""
listLinhasClientes ((codigo, nome, altura, peso, genero, idade, golos,posicao):xs) 
                        | (xs/=[] || (length xs)>=0)= show(codigo)++","++( nome)++","++(show altura)++","++(show peso)++","++(show idade)++","++(show(golos))++","++(posicao)++"|"++listLinhasClientes xs
                        | otherwise = listLinhasClientes xs
-- Cadastro de Jogador

cdJogador :: IO()
cdJogador =  do putStr "Digite o Codigo:\n\t";
                code <- lerInt;
                putStr "Digite o nome:\n\t";
                nome <- lerStr;
                putStr "Digite a altura:\n\t";
                altura <- lerFloat;
                putStr "Digite o peso:\n\t";
                peso <- lerFloat;
                putStr "Digite o genero:\n\t";
                genero <- lerChar;
                putStr "Digite a Idade:\n\t";
                idade <- lerInt;
                putStr "Digite os golos:\n\t";
                golos <- lerInt;
                putStr "Digite o posicao\n\t";
                posicao <- lerStr;
                
                escreverNoArquivo "clientes.txt" (show(code)++","++( nome)++","++(show altura)++","++(show peso)++","++(show idade)++","++(show(golos))++","++(posicao)++"|")
                putStr "\n\tDigite ENTER para continuar\n\t==> ";



-- Cadastro de Treinador

cdTreiner :: IO()
cdTreiner = do putStr "Digite o Codigo:\n\t";
                code <- lerInt;
                putStr "Digite o nome:\n\t";
                nome <- lerStr;
                putStr "Digite a altura:\n\t";
                altura <- lerFloat;
                putStr "Digite o peso:\n\t";
                peso <- lerFloat;
                putStr "Digite o genero:\n\t";
                genero <- lerChar;
                putStr "Digite a Idade:\n\t";
                idade <- lerInt;
                
                
                return (code,nome,altura,peso,genero,idade);
                putStr "\n\tDigite ENTER para continuar\n\t==> ";


-- Cadastro de EQUIPA

cdTeam :: IO()
cdTeam = do     putStr "Digite o nome:\n\t";
                nome <- lerStr;
                putStr "Digite a fundacao:\n\t";
                fundacao <- lerStr;
                putStr "Digite os titulos:\n\t";
                titulos <- lerInt;
                putStr "Digite o treinador:\n\t";
                treinador <- lerStr;
                putStr "Preencha os jogadores:\n\t";
                
                cdJogador;
                escreverNoArquivo "equipas.txt" ("|"++( nome)++","++( fundacao)++","++(show titulos)++","++(show treinador)++"|")
                
                putStr "\n\tDigite ENTER para continuar\n\t==> ";



lerStr :: IO String
lerStr = do n <- getLine; return n

lerChar :: IO Char
lerChar = do n <- getChar; return n

lerInt :: IO Int
lerInt = do int <- getLine; return (read int)

lerFloat :: IO Float
lerFloat = do float <- getLine; return (read float)