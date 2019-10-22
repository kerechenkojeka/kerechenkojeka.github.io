<div class="item">
    <div class="movie-box">
        <a href="{full-link}">
            <div class="poster">
                <span class="center-icons">
                 <span class="icon-hd">[xfvalue_quality]</span>
                  <!---  <span class="icon-film">Фильм</span> --->
                    <span class="icon-year">[xfvalue_year]</span>
                  <!--- <span class="icon-voicer">Фильм</span> ---> 
                </span>
                <div class="img">
                    <img src="{image-1}" alt="{title}" width="236" height="350">
                </div>
               {include file="/engine/modules/rating_kp.php?id_kinopoisk=[xfvalue_kp]"}    
            </div>
        </a>
        <div class="name">
            <a href="{full-link}">{title}</a>
        </div>
        <div class="category">{category}</div>
    </div>
</div>



