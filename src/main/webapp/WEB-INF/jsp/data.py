import pandas as pd
import numpy as np
import json

def gen_services():
    identificator = ''
    Name = ''
    Description = ''
    Price = 0
    enddata = ''
    duration = '3'
    category = ''
    services = []
    data = pd.read_csv("card_transaction.csv")
    category_id = {1:'Спортивный сервис', 2 :'Музыкальный сервис', 3: 'Домашний кинотеатр',4:'Домашние услуги',5:'Транспортный услуги',6:'Мобильные услуги', 7:'Банковские услуги',8: 'Игровой сервис',9:'Другие'}
    service_id = {1:'Ivi',2:'MTC',3:'Тройка',4:'Yandex.music',5:'YouTube',6:'Okko',7:'H&M',8:'ПионерНет',9:'МЭС',10:'Ростелеком',11:'ЖКХ',12:'PlayMarket',13:'Netflix',14:'UFC',15:'МатчТВ',16:'СберБанк',17:'ОткрытиеБанк',18:'Tinkoff',19:'AppleMusic',20:'Beeline',21:'Мегафон',22:'Tele2',23:'Origin',24:'Steam',25:'AppStore',26:'Мир'}
    data1 = data[data['category_id'].isin(range(24))]
    indexes= data.loc[data['category_id'].isin(range(24))].index
    date = (pd.to_datetime(data1['auth_date'])).dt.date
    for i in range(len(data1)):
        doe = date[indexes[i]].strftime("%d-%m-%y")
        category = int(data1['category_id'][indexes[i]])
        descr = category_id[category]
        ident = int(data1['id_service'][indexes[i]])
        name = service_id[ident]
        price = int(data1['trans_amount'][indexes[i]])
        service = {
            'id' : ident,
            'Name' : name,
            'Description' : descr,
            'Price' : price,
            'End-data' : doe,
            'Duration' : duration,
            'Category' : category
        }
        services.append(service)
    return services

def main():
    services = gen_services()
    with open('services.json', 'w', encoding = 'utf-8') as file:
        json.dump(services, file, indent = 2, ensure_ascii = False)
if __name__ == '__main__':
    main()

