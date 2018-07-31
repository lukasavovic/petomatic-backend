<?php require "views/partials/header.view.php" ?>

<?php require "views/partials/adminPanelMain.view.php" ?>

<div class="admin-body" id="main">
<div class="navBar-left">
    <h3>T-shirts made by Bershka</h3>
</div>
<div class="index-admin">
    
<a href="/admin/products/create" class="addNew"> <i class="fas fa-plus-circle"></i> Add new product</a>

<div class="product-table">
<?php foreach ($products as $product): ?>
    <div class="singleProduct">
        <div class="picture"  style="background-image: url(<?= $product->image ?>); background-repeat: no-repeat;width: 100%;height: 100%;">
        </div>
        <div class="description">
           
            <h4>Title: <span style="color: #4b5868"><?= $product->title ?></span></h4>
            <h5>ID: <?= $product->id ?>, Description: </h5>
            <p><?= substr($product->description, 0, 60) ?></p>
            <div class="buttons">
            <a class="formButton" href="/admin/products/show?id=<?= $product->id ?>"><i class="fas fa-search-plus"></i></a>
                <form action="/admin/products/edit" method="get"><button class="formButton">
                    <input type="hidden" name="id" value="<?= $product->id ?>"><i class="fas fa-edit"></i></button>
                </form>
                <form class="deleteForm" action="/admin/products/destroy" method="post">
                    <button class="formButton">
                    <i class="fas fa-minus-circle"></i><input type="hidden" name="id" value="<?= $product->id ?>">
                </form>
            </div>
            
        </div>
    </div>
<?php endforeach; ?>
</div>

</div>
</div>
</div>
<?php require "views/partials/footer.view.php" ?>

<script>
    var form = document.querySelectorAll('.deleteForm');
    for(i=0; i<form.length;i+=1){
        form[i].addEventListener('submit',(event)=>{
            var x = confirm("Are you sure you want to delete?");
            if (x) return true;
            else return event.preventDefault();
        })
    }
</script>