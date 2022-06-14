async function download(e){let t=await fetch(e);return await t.text()}async function load(e,t,a){t.length<4&&(t=t.toUpperCase());let l=t+"/"+a+".csv",s=(await download("./csv/"+l)).split(/\r?\n/);s=s.slice(1,Math.min(s.length-1,101));for(let t in s){row=s[t].split(","),t+=1;let a=document.createElement("a");a.href="./img/post/"+row[1]+".jpg",a.target="_blank",e.appendChild(a);let l=document.createElement("li");l.classList.add("rank-element"),a.appendChild(l);let n=document.createElement("p");n.classList.add("rank-number"),n.innerHTML="#",l.appendChild(n);let d=document.createElement("p");d.classList.add("rank-name"),d.innerHTML=row[0],l.appendChild(d);let i=document.createElement("p");i.classList.add("rank-value"),i.innerHTML=row[2],l.appendChild(i)}}const main=document.getElementById("target"),games=["Eventide","Slayer","Capture the Flag","Flag Hunters","Core Rush","Hydra","Colosseum"],gamemodes=["eventide","slayer","ctf","fh","cr","hydra","colosseum"];for(let e in gamemodes){let t=gamemodes[e],a=document.createElement("section");a.classList.add("gamemode-section"),a.id=t,main.appendChild(a);let l=document.createElement("a");l.href="#"+t,a.appendChild(l);let s=document.createElement("h2");s.classList.add("gamemode-title"),s.innerHTML=games[e],l.appendChild(s);let n,d,i=document.createElement("div");i.classList.add("gamemode-flexbox"),a.appendChild(i),"hydra"==t?(n=["Cores Returned","Paragon Kills","Damage to Boss","Kills","Assists","Damage to Players"],d=["cr","pk","dtb","kills","assists","dtp"]):"colosseum"==t?(n=["Damage Dealt","Kills"],d=["dd","kills"]):(n=["Score","Kills","Assists","Kill Streak","Score per Minute"],d=["score","kills","assists","ks","spm"]);for(let e in d){let a=d[e],l=document.createElement("section");l.classList.add("statistic-section"),l.id=t+"-"+a,i.appendChild(l);let s=document.createElement("a");s.href="#"+t+"-"+a,l.appendChild(s);let c=document.createElement("h3");c.classList.add("statistic-title"),c.innerHTML=n[e],s.appendChild(c);let o=document.createElement("ul");o.classList.add("stat-flexbox"),l.appendChild(o),load(o,t,a)}}