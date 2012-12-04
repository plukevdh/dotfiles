makego() {
  basename="`echo $1 | sed "s/\.go//"`"

  6g $1
  6l -o $basename.out $basename.6

  echo "Output: $basename.out"
}
