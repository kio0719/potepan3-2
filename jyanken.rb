aiko = false

loop do
    your_win = false

    if aiko
        puts "あいこで..."
    else
        puts "じゃんけん..."
    end

    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    input_hand_n = gets.to_i
    comp_hand_n = rand(3)

    if (0..3).include?(input_hand_n)
        if input_hand_n == 3
            puts "ゲームを終了します"
            break
        else
            if aiko
                puts "ショ！"
                aiko = false
            else
                puts "ホイ!"
            end

            def jyanken_num(hand_n)
                case hand_n
                when 0
                    hand = "グー" 
                when 1
                    hand = "チョキ"
                when 2
                    hand = "パー"
                end
            end

            input_hand = jyanken_num(input_hand_n)
            comp_hand = jyanken_num(comp_hand_n)

            puts "---------------------"
            puts "あなた：#{input_hand}を出しました"
            puts "相手：#{comp_hand}を出しました"
            puts "---------------------"

            if input_hand_n == comp_hand_n
                aiko = true
                redo
            elsif (input_hand_n == 0 && comp_hand_n == 1) ||
                (input_hand_n == 2 && comp_hand_n == 0)  ||
                (input_hand_n == 1 && comp_hand_n == 2)
                your_win = true
            end
        end
        #あっち向いてホイ
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"

        input_dir_n = gets.to_i
        comp_dir_n = rand(3)

        if (0..3).include?(input_dir_n)
            def direction(dir_num)
                case dir_num
                when 0
                    dir = "上"
                when 1
                    dir = "下"
                when 2
                    dir = "左"
                when 3
                    dir = "右"
                end
            end

            input_dir = direction(input_dir_n)
            comp_dir = direction(comp_dir_n)

            puts "---------------------"
            puts "あなた：#{input_dir}"
            puts "相手：#{comp_dir}"
            puts "---------------------"

            if input_dir_n == comp_dir_n
                if your_win
                    puts "あなたの勝利です！"
                    break
                else
                    puts "あなたの負けです"
                    break
                end
            end
        else
            puts "0~3の数字を入力してください"
            break
        end
    else
        puts "0~3の数字を入力してください"
        break
    end
end

