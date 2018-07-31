</div>
    </div>
</div>
</body>
<script>
    var menuHide = document.getElementById('menuHide');
    var verticalNav = document.querySelector('.verticalNav');
    var main = document.getElementById('main');
    var rotate = false;
    var adminPanel = document.getElementById('admin-panel');
    var verticalNavUl = document.getElementById('verticalNavUl');
    menuHide.addEventListener('click',(e)=>{
        verticalNav.classList.toggle('hiddenNav');
        main.classList.toggle('expand');
        verticalNavUl.classList.toggle('hidden');
        adminPanel.classList.toggle('hidden');
        if(rotate){
            menuHide.style.transform = "rotate(0deg)";
            return rotate = false;
        } else {
            menuHide.style.transform = "rotate(180deg)";
            return rotate = true;
        }
        
    });
    window.addEventListener('resize',()=>{
        if(window.innerWidth <=700){
            verticalNav.classList.add('hiddenNav');
            main.classList.add('expand');
            verticalNavUl.classList.add('hidden');
            adminPanel.classList.add('hidden');
            if(rotate){
                menuHide.style.transform = "rotate(0deg)";
                return rotate = false;
            } else {
                menuHide.style.transform = "rotate(180deg)";
                return rotate = true;
            }
        }
    })
</script>
</html>