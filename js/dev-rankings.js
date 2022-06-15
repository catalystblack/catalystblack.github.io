async function download(path) {
    let response = await fetch(path);
    let text = await response.text();
    return text;
}

async function load(list, gamemode, statistic) {
    if (gamemode.length < 4) {
        gamemode = gamemode.toUpperCase();
    }
    let path = gamemode + '/' + statistic + '.csv';
    let data = await download('./csv/' + path);
    let rows = data.split(/\r?\n/);
    rows = rows.slice(1, Math.min(rows.length - 1, 101));
    for (let k in rows) {
        row = rows[k].split(',');
        k = parseInt(k) + 1;

        let element_link = document.createElement('a');
        element_link.href = './img/post/' + row[1] + '.jpg';
        element_link.target = '_blank';
        list.appendChild(element_link);

        let element = document.createElement('li');
        element.classList.add('rank-element');
        element_link.appendChild(element);

        let number = document.createElement('p');
        number.classList.add('rank-number');
        number.innerHTML = '#' + k;
        element.appendChild(number);

        let name = document.createElement('p');
        name.classList.add('rank-name');
        name.innerHTML = row[0];
        element.appendChild(name);

        let value = document.createElement('p');
        value.classList.add('rank-value');
        value.innerHTML = row[2];
        element.appendChild(value);
    }
}

window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'G-4YJMQ5MS8R');

const main = document.getElementById('target');
const games = ['Eventide', 'Slayer', 'Capture the Flag',
    'Flag Hunters', 'Core Rush', 'Hydra', 'Colosseum']
const gamemodes = ['eventide', 'slayer',
    'ctf', 'fh', 'cr', 'hydra', 'colosseum'];

for (let i in gamemodes) {
    let gamemode = gamemodes[i];

    let outer = document.createElement('section');
    outer.classList.add('gamemode-section');
    outer.id = gamemode;
    main.appendChild(outer);

    let title_link = document.createElement('a');
    title_link.href = '#' + gamemode;
    outer.appendChild(title_link);

    let title = document.createElement('h2');
    title.classList.add('gamemode-title');
    title.innerHTML = games[i];
    title_link.appendChild(title);

    let flexbox = document.createElement('div');
    flexbox.classList.add('gamemode-flexbox');
    outer.appendChild(flexbox);

    let stats;
    let statistics;

    if (gamemode == 'hydra') {
        stats = ['Cores Returned', 'Paragon Kills', 'Damage to Boss',
            'Kills', 'Assists', 'Damage to Players']
        statistics = ['cr', 'pk', 'dtb', 'kills', 'assists', 'dtp'];
    } else if (gamemode == 'colosseum') {
        stats = ['Damage Dealt', 'Kills']
        statistics = ['dd', 'kills'];
    } else {
        stats = ['Score', 'Kills', 'Assists',
            'Kill Streak', 'Score per Minute']
        statistics = ['score', 'kills', 'assists', 'ks', 'spm']
    }

    for (let j in statistics) {
        let statistic = statistics[j];

        let inner = document.createElement('section');
        inner.classList.add('statistic-section');
        inner.id = gamemode + '-' + statistic;
        flexbox.appendChild(inner);

        let subtitle_link = document.createElement('a');
        subtitle_link.href = '#' + gamemode + '-' + statistic;
        inner.appendChild(subtitle_link);

        let subtitle = document.createElement('h3');
        subtitle.classList.add('statistic-title');
        subtitle.innerHTML = stats[j];
        subtitle_link.appendChild(subtitle);

        let list = document.createElement('ul');
        list.classList.add('stat-flexbox');
        inner.appendChild(list);

        load(list, gamemode, statistic);
    }
}