# -*- coding: UTF-8 -*-
import requests
import json
import threading


class RandomGenerator(object):
    def __init__(self):
        self.rolling_flag = ""
        self.real_random_content = ""
        self.real_random_list=""
        self.init_draw_people = ["name"+str(x) for x in range(0, 60)]

# 获取真随机数方法
    def generate_real_random(self):
        url = "https://api.random.org/json-rpc/1/invoke"
        header = {'content-type': 'application/json'}
        content = {"jsonrpc": "2.0",
                   "method": "generateIntegers",
                   "params": {"apiKey": "00000000-0000-0000-0000-000000000000",
                              "n": 60,
                              "min": 0,
                              "max": 59,
                              "replacement": False,
                              "base": 10
                              },
                   "id": 3677
                   }
        try:
            self.real_random_content = requests.post(url, data=json.dumps(content), headers=header)
            real_random = json.loads(self.real_random_content.text)['result']['random']['data']
            return real_random
        except Exception:

            print "error,error,error"


# 停止程序循环
    def stop_cycle(self):
        program_stop = raw_input()
        if program_stop.strip():
            self.rolling_flag = "stop"
            return
        else:
            return


# 抽奖程序开始运行与返回结果
    def get_results(self):
        print "========开始抽奖=========="
        number_lucky_draw = raw_input("The number of lucky draw: ")
        stop_cycle_thread1 = threading.Thread(target=self.stop_cycle)
        stop_cycle_thread1.start()
        winner = ""
        while True:
            try:
                self.real_random_list = [self.generate_real_random()[x] for x in range(0, int(number_lucky_draw))]
                winner = [self.init_draw_people[int(r)] for r in self.real_random_list]
                print winner
            except IndexError:
                number_lucky_draw = raw_input("The number of lucky draw: ")
                print "超过长度啦出错啦~"
            except ValueError:
                number_lucky_draw = raw_input("The number of lucky draw: ")
                print "value 出错啦"
            if self.rolling_flag == "stop":
                print "===========中奖人========="
                print winner,
                choose_continue = raw_input("是否继续 y?")
                if choose_continue != 'y':
                    break
                else:
                    self.rolling_flag = " "
                    stop_cycle_thread2 = threading.Thread(target=self.stop_cycle)
                    stop_cycle_thread2.start()

if __name__ == '__main__':
    my_game=RandomGenerator()
    my_game.get_results()
