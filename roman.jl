function paraArabico(roman::String)
    # deixando maiúsculo
    roman = uppercase(roman)
    
    # numeros de 1 a 10
    tamanho = length(roman)
    numArab = 0
		contador = 1
		
    while contador <= tamanho
			atual = roman[contador]
			
			if contador < tamanho
				prox = roman[contador + 1]
			end
			
			if contador > 1
				ant = roman[contador - 1]
			else
				ant = false
			end
				
			if atual == 'M'
				if ant == 'C'
					numArab += 900
				else
					numArab += 1000
				end
			elseif atual == 'D'		
				if ant == 'C'
					numArab += 400
				else
					numArab += 500
				end		
			elseif atual == 'C'		
				if ant == 'X'
					numArab += 90
                elseif prox == 'M'
                    numArab += 0
				else
					numArab += 100
				end		
			elseif atual == 'L'		
				if ant == 'X'
					numArab += 40
				else
					numArab += 50
				end		
			elseif atual == 'X'		
				if ant == 'I'
					numArab += 9
				elseif prox == 'L'
					numArab += 0
				elseif prox == 'C'
					numArab += 0
				else
					numArab += 10
				end		
			elseif atual == 'V'		
				if ant == 'I'
					numArab += 4
				else
					numArab += 5
				end		
			elseif atual == 'I'		
					numArab += 1
			end
			contador += 1
    end
		
		return numArab
end

function paraRomano(arabico::Int64)
    print("Função em construção")
    
end

printstyled(" ----- ave cesar ----- \n", color=:red)
printstyled(" ----- Programa para transfomar números romanos em arábicos! ------\n", color=:red)
printstyled("Escolha uma opção de conversão: digite ave para número romano -> arábico, ou eva para arábico -> romano  : ", color=:green)
opcao = readline()

if opcao == "AVE" || opcao == "ave"
    printstyled("Digite um número de I a MMMCMIX: ", color=:red)
    roman = readline()
    printstyled("O número arábico é: ", paraArabico(roman), color=:blue)
    println("")
else
    printstyled("Digite um número de 1 a 3999: ", color=:red)
    arabico = parse(Int,readline())
    paraRomano(arabico)
end 
