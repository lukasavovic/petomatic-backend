<?php require "views/partials/header.view.php" ?>

<?php require "views/partials/adminPanelMain.view.php" ?>

<div class="admin-body" id="main">
<div class="navBar-left">
    <h3>Admin panel for our little shop</h3>
</div>
<div class="index-admin">

<a href="/admin/products" class="backHome"><i class="fas fa-arrow-circle-left" id="backHome"></i> Back To All Products</a>

<div class="container-fluid create-wrapper">
<form action="/admin/products/update" method="POST">
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" name="title" id="title" class="form-control" value="<?= $product->title ?>">
    </div>

    <div class="form-group">
        <label for="description">Description</label>
        <textarea name="description" id="description" cols="30" rows="10" class="form-control"><?= $product->description ?></textarea>
    </div>

    <div class="form-group">
        <label for="image">Image</label>
        <input type="text" name="image" id="image" class="form-control" value="<?= $product->image ?>">
    </div>
    <input type="hidden" name="id" id="id" class="form-control" value="<?= $product->id ?>">

    <button class="btn btn-primary">Submit</button>
    <button type="reset" class="btn btn-danger">Reset</button>

</form>
</div>
<?php require "views/partials/footer.view.php" ?>
