const url = 'https://api.openweathermap.org/data/2.5/weather?q=montreal&appid=2c0c06999bf536f4bcb205cd7d15c68f&units=metric'

const city = document.querySelector("#city");
const date = document.querySelector("#date");
const description = document.querySelector("#description");
const weather = document.querySelector("#weather");
const icon = document.querySelector("#icon");


// const autoRefresh = () => {

//     fetch(url)
//     .then(response  => response.json())
//     .then((data) => {
//         console.log(data)
//         // city.innerText = data.name
//         const today = new Date()
//         const localOffset = data.timezone + today.getTimezoneOffset() * 60;
//         const localDate = new Date(today.setUTCSeconds(localOffset));
//         const options = { weekday: 'long',  month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
//         const formattedDate = localDate.toLocaleDateString('en-Us', options)
//         date.innerText = formattedDate;
//         console.log(localDate)
//         // description.innerText = data.weather[0].description
//         weather.innerText = `${Math.round(data.main.temp)}°C`;

//         icon.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}.png`
        
//     })
// }

const autoRefresh = () => {
    const data =  {
        "coord": {
          "lon": -0.13,
          "lat": 51.51
        },
        "weather": [
          {
            "id": 300,
            "main": "Drizzle",
            "description": "light intensity drizzle",
            "icon": "09d"
          }
        ],
        "base": "stations",
        "main": {
          "temp": 280.32,
          "pressure": 1012,
          "humidity": 81,
          "temp_min": 279.15,
          "temp_max": 281.15
        },
        "visibility": 10000,
        "wind": {
          "speed": 4.1,
          "deg": 80
        },
        "clouds": {
          "all": 90
        },
        "dt": 1485789600,
        "sys": {
          "type": 1,
          "id": 5091,
          "message": 0.0103,
          "country": "GB",
          "sunrise": 1485762037,
          "sunset": 1485794875
        },
        "id": 2643743,
        "name": "London",
        "cod": 200
        }

    // fetch(url)
    // .then(response  => response.json())
    // .then((data) => {
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
        
    // })
}
export default autoRefresh;
