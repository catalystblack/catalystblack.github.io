async function download(e){let t=await fetch(e);return await t.text()}async function load(e,t,a){t.length<4&&(t=t.toUpperCase());let l=t+"/"+a+".csv",s=(await download("./csv/"+l)).split(/\r?\n/);s=s.slice(1,Math.min(s.length-1,101));for(let t in s){row=s[t].split(","),t=parseInt(t)+1,nameHTML=row[0].replace("GG_","<span style='color:#A74482'>GG_</span>").replace("HiVE_","<span style='color:#FADF63'>HiVE_</span>").replace("INV_","<span style='color:#E03616'>INV_</span>").replace("SP_","<span style='color:#000000'>SP_</span>").replace("TT_","<span style='color:#1A936F'>TT_</span>");let a=document.createElement("a");a.href="./img/post/"+row[1]+".jpg",a.target="_blank",e.appendChild(a);let l=document.createElement("li");l.classList.add("rank-element"),a.appendChild(l);let n=document.createElement("p");n.classList.add("rank-number"),n.innerHTML="#"+t,l.appendChild(n);let d=document.createElement("p");d.classList.add("rank-name"),d.innerHTML=nameHTML,l.appendChild(d);let i=document.createElement("p");i.classList.add("rank-value"),i.innerHTML=row[2],l.appendChild(i)}}function gtag(){dataLayer.push(arguments)}window.dataLayer=window.dataLayer||[],gtag("js",new Date),gtag("config","G-4YJMQ5MS8R");const main=document.getElementById("target"),games=["Eventide","Hydra","Slayer","Capture the Flag","Flag Hunters","Core Rush","Hydra","Colosseum"],gamemodes=["eventide","hydra","slayer","ctf","fh","cr","colosseum"];for(let e in gamemodes){let t=gamemodes[e],a=document.createElement("section");a.classList.add("gamemode-section"),a.id=t,main.appendChild(a);let l=document.createElement("a");l.href="#"+t,a.appendChild(l);let s=document.createElement("h2");s.classList.add("gamemode-title"),s.innerHTML=games[e],l.appendChild(s);let n,d,i=document.createElement("div");i.classList.add("gamemode-flexbox"),a.appendChild(i),"hydra"==t?(n=["Cores Returned","Paragon Kills","Damage to Boss","Kills","Assists","Damage to Players"],d=["cr","pk","dtb","kills","assists","dtp"]):"colosseum"==t?(n=["Damage Dealt","Kills"],d=["dd","kills"]):(n=["Score","Kills","Assists","Kill Streak","Score per Minute"],d=["score","kills","assists","ks","spm"]);for(let e in d){let a=d[e],l=document.createElement("section");l.classList.add("statistic-section"),l.id=t+"-"+a,i.appendChild(l);let s=document.createElement("a");s.href="#"+t+"-"+a,l.appendChild(s);let o=document.createElement("h3");o.classList.add("statistic-title"),o.innerHTML=n[e],s.appendChild(o);let r=document.createElement("ul");r.classList.add("stat-flexbox"),l.appendChild(r),load(r,t,a)}}