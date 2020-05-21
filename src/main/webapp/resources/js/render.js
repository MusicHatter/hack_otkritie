const partners = [
    {
        "id": 1,
        "Name": "Ivi",
        "Description": "Домашний кинотеатр",
        "Price": 1000,
        "Duration": "3",
        "Category": 3
      },
      {
        "id": 2,
        "Name": "MTC",
        "Description": "Мобильные услуги",
        "Price": 650,
        "Duration": "3",
        "Category": 6
      },
      {
        "id": 3,
        "Name": "Тройка",
        "Description": "Транспортный услуги",
        "Price": 2500,
        "Duration": "3",
        "Category": 5
      },
      {
        "id": 4,
        "Name": "YandexMusic",
        "Description": "Музыкальный сервис",
        "Price": 400,
        "Duration": "3",
        "Category": 2
      },
      {
        "id": 5,
        "Name": "YouTube",
        "Description": "Домашний кинотеатр",
        "Price": 1000,
        "Duration": "3",
        "Category": 3
      },
      {
        "id": 6,
        "Name": "Okko",
        "Description": "Домашний кинотеатр",
        "Price": 1200,
        "Duration": "3",
        "Category": 3
      }
];

const modalInfo = document.querySelector('.modal-info'),
    moneySubsBtnDel = document.querySelector('.money-subs-btn-del'),
    subsListItem = document.querySelectorAll('.subs-list-item');

const subsListRenderPart = document.querySelector('.subs-list-render-part');

const url_addr = '/all';

const getData = (url, callback, reject = console.error) => {
    const request = new XMLHttpRequest();

    request.open('GET', url);

    request.addEventListener('readystatechange', () => {
        if (request.readyState !== 4) return;

        if (request.status === 200) {
            callback(request.response);
        } else {
            reject(request.status);
        }
    });

    request.send();
}

city = [];

getData(url_addr, (data) => {
    city = JSON.parse(data);
    console.log(city);
});


for (index = 0; index < subsListItem.length; index++) {
    Item = subsListItem[index];
    Item.addEventListener('click', function (event) {
        event.preventDefault();
        modalInfo.classList.toggle('display-block');
    });
}

const createCard = (data) => {
    const ticket = document.createElement('li');
    ticket.classList.add('subs-list-item');

    let deep = '';

    if (data) {
        deep = `
            <img class="img-subs" src="img/pic/${data.id}.jpg">
            <span class="subs-title">${data.Name}</span>
        `;
    } else {
        deep = '<h3>К сожалению на выбранную дату билетов не нашлось</h3>'
    }

    ticket.insertAdjacentHTML('afterbegin', deep)

    return ticket;
}

const renderSubsPartn = (List) => {
    for (let i = 0; i < List.length; i++) {
        const ticket = createCard(List[i]);
        subsListRenderPart.append(ticket);
    }
}

renderSubsPartn(partners);