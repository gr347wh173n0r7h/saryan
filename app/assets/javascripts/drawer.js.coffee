$ ->
  $(".left-drawer-trigger").click Ink.requireModules ["Ink.UI.Drawer_1"], (Drawer) ->
    inkDrawer = new Drawer(
      sides: "left"
      mode:  "push"
    )
    return
