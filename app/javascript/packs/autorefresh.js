const url = 'https://api.openweathermap.org/data/2.5/weather?q=montreal&appid=2c0c06999bf536f4bcb205cd7d15c68f&units=metric'

const city = document.querySelector("#city");
const date = document.querySelector("#date");
const description = document.querySelector("#description");
const weather = document.querySelector("#weather");
const icon = document.querySelector("#icon");


const autoRefresh = () => {

    fetch(url)
    .then(response  => response.json())
    .then((data) => {
        console.log(data)
        // city.innerText = data.name
        const today = new Date()
        const localOffset = data.timezone + today.getTimezoneOffset() * 60;
        const localDate = new Date(today.setUTCSeconds(localOffset));
        const options = { weekday: 'long',  month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
        const formattedDate = localDate.toLocaleDateString('en-Us', options)
        date.innerText = formattedDate;
        console.log(localDate)
        // description.innerText = data.weather[0].description
        weather.innerText = `${Math.round(data.main.temp)}°C`;

        icon.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}.png`
    })
}

export default autoRefresh;