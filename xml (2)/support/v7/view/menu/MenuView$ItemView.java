package android.support.v7.view.menu;

import android.graphics.drawable.Drawable;

public abstract interface MenuView$ItemView
{
  public abstract MenuItemImpl getItemData();
  
  public abstract void initialize(MenuItemImpl paramMenuItemImpl, int paramInt);
  
  public abstract boolean prefersCondensedTitle();
  
  public abstract void setCheckable(boolean paramBoolean);
  
  public abstract void setChecked(boolean paramBoolean);
  
  public abstract void setEnabled(boolean paramBoolean);
  
  public abstract void setIcon(Drawable paramDrawable);
  
  public abstract void setShortcut(boolean paramBoolean, char paramChar);
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  public abstract boolean showsIcon();
}


/* Location:           C:\Users\Abhijeet\Desktop\code extractor\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.MenuView.ItemView
 * JD-Core Version:    0.7.0.1
 */