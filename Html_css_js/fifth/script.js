const key = '48aa722f';
const searchButton = document.querySelector("#search-button");
let baseUrl = "https://www.omdbapi.com/";
let searchInput = document.getElementById('Input');
let pageDecrease = document.getElementById('decrease');
let pageIncrease = document.getElementById('increase');
let displaySearchList = document.getElementsByClassName('fav-container');

let currentPage = 1;

pageIncrease.addEventListener('click',()=>{
    currentPage = currentPage + 1
    findMovies()});
pageDecrease.addEventListener("click", ()=>{
    currentPage = currentPage - 1
    prevPage()});

searchButton.addEventListener('click', findMovies);
searchInput.addEventListener('input', findMovies);

async function singleMovie() {
    try {
    let urlQueryParams = new URLSearchParams(window.location.search);
    let id = urlQueryParams.get('id')
    console.log(id);
    const url = `${baseUrl}?i=${id}&apikey=${key}`
    const res = await fetch(`${url}`);
    const data = await res.json();
    console.log(data);
    console.log(url);

    // Making the output html by string interpolition
    let output = `

    <div class="movie-poster">
        <img src=${data.Poster} alt="Movie Poster">
    </div>
    <div class="movie-details">
        <div class="details-header">
            <div class="dh-ls">
                <h2>${data.Title}</h2>
            </div>
          
        </div>
        <span class="italics-text"><i>${data.Year} &#x2022; ${data.Country} &#x2022; Rating - <span
                    style="font-size: 18px; font-weight: 600;">${data.imdbRating}</span>/10 </i></span>
        <ul class="details-ul">
            <li><strong>Actors: </strong>${data.Actors}</li>
            <li><strong>Director: </strong>${data.Director}</li>
            <li><strong>Writers: </strong>${data.Writer}</li>
        </ul>
        <ul class="details-ul">
            <li><strong>Genre: </strong>${data.Genre}</li>
            <li><strong>Release Date: </strong>${data.DVD}</li>
            <li><strong>Box Office: </strong>${data.BoxOffice}</li>
            <li><strong>Movie Runtime: </strong>${data.Runtime}</li>
        </ul>
        <p style="font-size: 14px; margin-top:10px;">${data.Plot}</p>
        <p style="font-size: 15px; font-style: italic; color: #222; margin-top: 10px;">
            <i class="fa-solid fa-award"></i>
            &thinsp; ${data.Awards}
        </p>
    </div>  
    `

    document.querySelector('.movie-container').innerHTML = output
} catch (error) {
        
}

}

async function displayMovieList(movies) {
    let output = '';
    let img = '';
    
    movies?.map((i)=> {

        if (i.Poster != 'N/A') {
            img = i.Poster;
        }
        else {
            img = 'img/blank-poster.webp';
        }
        let id = i.imdbID;

        //Appending the output through string interpolition
        output += `

        <div class="fav-item">
            <div class="fav-poster"> 
            <a href="movie.html?id=${id}"><img src=${img} alt="Favourites Poster"></a>
            </div>
            <div class="fav-details">
                <div class="fav-details-box">
                    <div>
                        <p class="fav-movie-name"><a href="movie.html?id=${id}">${i.Title}</a></p>
                        <p class="fav-movie-rating"><a href="movie.html?id=${id}">${i.Year}</a></p>

                    </div>
                
                </div>
            </div>
        </div>
       `
    })
    //Appending this to the movie-display class of our html page
    document.querySelector('.fav-container').innerHTML = output;
    console.log("here is movie list ..", movies);
}

async function fetchMovie(currentPage){
    try {
        const url = `${baseUrl}?s=${(searchInput.value).trim()}&page=${currentPage}&apikey=${key}`;
        const res = await fetch(`${url}`);
        const data = await res.json();
        window.scrollTo(0, 0);
        return data.Search
    } catch (error) {
        console.log(error)
    }
     
}

async function findMovies() {

        // currentPage = currentPage + 1;
        var search = await fetchMovie(currentPage)
        
        displayMovieList(search)
        // searchInput.value = ""
        if(currentPage>1){
            pageDecrease.classList.remove('disabled')
        }
        if(currentPage>=3){
            pageIncrease.classList.add('disabled')

        }

   
}
async function prevPage() {
    
        // currentPage = currentPage - 1;
        var search = await fetchMovie(currentPage)
        
        displayMovieList(search)
        // searchInput.value = ""
        if(currentPage==1){
            pageIncrease.classList.add('disabled')
        }
        if(currentPage<3){
            pageIncrease.classList.remove('disabled')

        }
   
}

findMovies();