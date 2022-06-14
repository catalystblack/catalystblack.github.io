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
        console.log(rows);
        console.log(rows.length);
        if (rows.length > 101) {
            rows = rows.slice(1,101);
        } else {
            rows = rows.shift();
        }
        console.log(rows);
}

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
        outer.appendChild(flexbox);

        load(list, gamemode, statistic);
    }
}