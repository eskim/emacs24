(when window-system
  (create-fontset-from-fontset-spec
   "-apple-dejavu sans mono-medium-r-normal--12-120-72-72-m-120-fontset-eskim,
 ascii:-apple-dejavu sans mono-medium-r-normal--12-120-72-72-m-120-iso10646-1,
 korean-ksc5601:-apple-applegothic-medium-r-normal--12-120-72-72-m-120-iso10646-1")
  "-apple-dejavu sans mono-medium-r-normal--12-120-72-72-m-120-fontset-eskim"

  (set-frame-font "-apple-dejavu sans mono-medium-r-normal--12-120-72-72-m-120-fontset-eskim")
  (load-theme 'zenburn))















