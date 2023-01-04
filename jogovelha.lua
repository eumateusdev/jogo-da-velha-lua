-- jogo da velha em lua
-- feito por @eumateusdev

Tabela = {'1', '2', '3', '4', '5', '6', '7', '8', '9'}
X = 'X'

function Montando_tabela()
    print(":::::::::::  ::::::::   ::::::::   ::::::::   :::::::::      :::      :::     ::: :::::::::: :::        :::    :::     :::     ")
    print("    :+:     :+:    :+: :+:    :+: :+:    :+:  :+:    :+:   :+: :+:    :+:     :+: :+:        :+:        :+:    :+:   :+: :+:   ")
    print("    +:+     +:+    +:+ +:+        +:+    +:+  +:+    +:+  +:+   +:+   +:+     +:+ +:+        +:+        +:+    +:+  +:+   +:+  ")
    print("    +#+     +#+    +:+ :#:        +#+    +:+  +#+    +:+ +#++:++#++:  +#+     +:+ +#++:++#   +#+        +#++:++#++ +#++:++#++: ")
    print("    +#+     +#+    +#+ +#+   +#+# +#+    +#+  +#+    +#+ +#+     +#+   +#+   +#+  +#+        +#+        +#+    +#+ +#+     +#+ ")
    print("#+# #+#     #+#    #+# #+#    #+# #+#    #+#  #+#    #+# #+#     #+#    #+#+#+#   #+#        #+#        #+#    #+# #+#     #+# ")
    print(" #####       ########   ########   ########   #########  ###     ###      ###     ########## ########## ###    ### ###     ### ")

    print("")
    print("")

    print(Tabela[1],"|", Tabela[2],"|", Tabela[3])
    print("________|_______________|___________")
    print(Tabela[4],"|", Tabela[5],"|", Tabela[6])
    print("________|_______________|___________")
    print(Tabela[7],"|", Tabela[8],"|", Tabela[9])

    print("")
    print("")

end

function Resultado()
    print(".........................................................................................")
    print(".########.####.##.....##....########...#######...........##..#######...######....#######.")
    print(".##........##..###...###....##.....##.##.....##..........##.##.....##.##....##..##.....##")
    print(".##........##..####.####....##.....##.##.....##..........##.##.....##.##........##.....##")
    print(".######....##..##.###.##....##.....##.##.....##..........##.##.....##.##...####.##.....##")
    print(".##........##..##.....##....##.....##.##.....##....##....##.##.....##.##....##..##.....##")
    print(".##........##..##.....##....##.....##.##.....##....##....##.##.....##.##....##..##.....##")
    print(".##.......####.##.....##....########...#######......######...#######...######....#######.")
    print(".........................................................................................")

    print("")
    print("")

    print(Tabela[1],"|", Tabela[2],"|", Tabela[3])
    print("________|_______________|___________")
    print(Tabela[4],"|", Tabela[5],"|", Tabela[6])
    print("________|_______________|___________")
    print(Tabela[7],"|", Tabela[8],"|", Tabela[9])

    print("")
    print("")

end

function Verificacao()



    if (Tabela[1] == Tabela[2] and Tabela[2] == Tabela[3]) then
        return 1
    end

    if (Tabela[4] == Tabela[5] and Tabela[5] == Tabela[6]) then
        return 1
    end

    if (Tabela[7] == Tabela[8] and Tabela[8] == Tabela[9]) then
        return 1
    end

    if (Tabela[1] == Tabela[4] and Tabela[4] == Tabela[7]) then
        return 1
    end

    if (Tabela[2] == Tabela[5] and Tabela[5] == Tabela[8]) then
        return 1
    end

    if (Tabela[3] == Tabela[6] and Tabela[6] == Tabela[9]) then
        return 1
    end

    if (Tabela[1] == Tabela[5] and Tabela[5] == Tabela[9]) then
        return 1
    end

    if (Tabela[3] == Tabela[5] and Tabela[5] == Tabela[7]) then
        return 1
    end

    if (Tabela[1] ~= '1' and Tabela[2] ~= '2' and Tabela[3] ~= '3' and Tabela[4] ~= '4' and Tabela[5] ~= '5' and Tabela[6] ~= '6' and Tabela[7] ~= '7' and Tabela[8] ~= '8' and Tabela[9] ~= '9') then
        return 0
    end

end


function Marcacao()

    B = io.read()

    A = tonumber(B)

    if (A == 1 and Tabela[1] == '1') then
        Tabela[1] = X
    end

    if (A == 2 and Tabela[2] == '2') then
        Tabela[2] = X
    end

    if (A == 3 and Tabela[3] == '3') then
        Tabela[3] = X
    end

    if (A == 4 and Tabela[4] == '4') then
        Tabela[4] = X
    end

    if (A == 5 and Tabela[5] == '5') then
        Tabela[5] = X
    end

    if (A == 6 and Tabela[6] == '6') then
        Tabela[6] = X
    end

    if (A == 7 and Tabela[7] == '7') then
        Tabela[7] = X
    end

    if (A == 8 and Tabela[8] == '8') then
        Tabela[8] = X
    end

    if (A == 9 and Tabela[9] == '9') then
        Tabela[9] = X
    end
end

function Maquina()

    Verificador_maquina = 0

    repeat
        Variavel = math.random(1,9)

        if (Variavel == 1 and Tabela[1] == '1') then
            Tabela[1] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 2 and Tabela[2] == '2') then
            Tabela[2] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 3 and Tabela[3] == '3') then
            Tabela[3] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 4 and Tabela[4] == '4') then
            Tabela[4] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 5 and Tabela[5] == '5') then
            Tabela[5] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 6 and Tabela[6] == '6') then
            Tabela[6] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 7 and Tabela[7] == '7') then
            Tabela[7] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 8 and Tabela[8] == '8') then
            Tabela[8] = 'O'
            Verificador_maquina = 1
        end

        if (Variavel == 9 and Tabela[9] == '9') then
            Tabela[9] = 'O'
            Verificador_maquina = 1
        end

    until (Verificador_maquina ~= 0)

end


function Main()

    repeat
        os.execute("cls")
        Montando_tabela()
        print("Digite uma posicao que deseja marcar: ")
        Marcacao()
        I = Verificacao()
        if (I == nil) then
            Maquina()
        end
    until (I ~= nil)
    os.execute("cls")
    Resultado()
end

Main()