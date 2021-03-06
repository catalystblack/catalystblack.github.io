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

        nameHTML = row[0].replace(
            'GG_', '<span style=\'color:#A74482\'>GG_</span>'
        ).replace(
            'HiVE_', '<span style=\'color:#FADF63\'>HiVE_</span>'
        ).replace(
            'INV_', '<span style=\'color:#E03616\'>INV_</span>'
        ).replace(
            'PHX_', '<span style=\'color:#C1292E\'>PHX_</span>'
        ).replace(
            'SP_', '<span style=\'color:#000000\'>SP_</span>'
        ).replace(
            'TT_', '<span style=\'color:#1A936F\'>TT_</span>'
        );

        let element_link = document.createElement('a');
        if (Math.max(document.documentElement.clientWidth,
            window.innerWidth || 0) > 767) {
            element_link.href = './img/post/' + row[1] + '.jpg';
            element_link.target = '_blank';
        }
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
        name.innerHTML = nameHTML;
        element.appendChild(name);

        let value = document.createElement('p');
        value.classList.add('rank-value');
        value.innerHTML = row[2];
        element.appendChild(value);
    }
}

const main = document.getElementById('target');
const games = ['Eventide', 'Hydra', 'Slayer', 'Capture the Flag',
    'Flag Hunters', 'Core Rush', 'Colosseum']
const gamemodes = ['eventide', 'hydra', 'slayer',
    'ctf', 'fh', 'cr', 'colosseum'];

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