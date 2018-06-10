package android.support.v4.internal.view;

import android.view.Menu;

public abstract interface SupportMenu
  extends Menu
{
  public static final int CATEGORY_MASK = -65536;
  public static final int CATEGORY_SHIFT = 16;
  public static final int USER_MASK = 65535;
  public static final int USER_SHIFT;
}


/* Location:           C:\Users\Abhijeet\Desktop\code extractor\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.internal.view.SupportMenu
 * JD-Core Version:    0.7.0.1
 */