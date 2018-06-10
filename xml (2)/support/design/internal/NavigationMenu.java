package android.support.design.internal;

import android.content.Context;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.view.SubMenu;

public class NavigationMenu
  extends MenuBuilder
{
  public NavigationMenu(Context paramContext)
  {
    super(paramContext);
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    MenuItemImpl localMenuItemImpl = (MenuItemImpl)addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
    NavigationSubMenu localNavigationSubMenu = new NavigationSubMenu(getContext(), this, localMenuItemImpl);
    localMenuItemImpl.setSubMenu(localNavigationSubMenu);
    return localNavigationSubMenu;
  }
}


/* Location:           C:\Users\Abhijeet\Desktop\code extractor\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.design.internal.NavigationMenu
 * JD-Core Version:    0.7.0.1
 */