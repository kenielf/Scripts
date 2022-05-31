#!/bin/env python


# Please uncomment or set the following values:
#result_l = ["XX", "XX", "XX", "XX", "XX"]
#games_d = {
#        "1A": ["XX", "XX", "XX", "XX", "XX"],
#        }


# Main
if __name__ == '__main__':
    for key, value in games_d.items():
        count = 0
        for entry in result_l:
            if entry in value:
                count += 1
        if count >= 1:
            print(f"Jogo: {key} | {', '.join(value)} | Acertos: {count}")
