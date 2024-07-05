### Format *.h and *.cpp files

```
find . -type f \( -name "*.h" -o -name "*.cpp" \) -exec clang-format -i {} +
```