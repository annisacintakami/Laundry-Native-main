<?php 
  $level_id = $_SESSION['LEVEL_ID'] ?? '';

  $queryLevelMenu = mysqli_query($config, "SELECT * FROM menus JOIN level_menus ON menus.id = level_menus.menu_id WHERE level_id = '$level_id' ORDER BY orders ASC");
  $rowLevelMenus = mysqli_fetch_all($queryLevelMenu, MYSQLI_ASSOC);

  $extraAccess = [
    3 => ['tambah-report'], 
    1 => ['add-role-menu', 'tambah-report', 'tambah-service', 'tambah-level', 'tambah-customer', 'tambah-menu', 'tambah-user', 'tambah-tax'],
];


$extraMenus = [];

if (isset($extraAccess[$level_id])) {
    foreach ($extraAccess[$level_id] as $pageName) {
        $extraMenus[] = [
            'link' => $pageName,
            'name' => ucfirst(str_replace('-', ' ', $pageName)),
            'icon' => 'bi bi-circle'
        ];
    }
}

?>
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
      <?php foreach($rowLevelMenus as $rowLevelMenu): ?>
      <li class="nav-item">
        <a class="nav-link collapsed" href="?page=<?php echo $rowLevelMenu['link'] ?>">
          <i class="<?php echo $rowLevelMenu['icon'] ?>"></i>
          <span><?php echo $rowLevelMenu['name'] ?></span>
        </a>
      </li><!-- End Dashboard Nav -->
      <?php endforeach ?>
    </ul>

  </aside>