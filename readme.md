### Format *.h and *.cpp files

```
clang-format -style=google -dump-config > .clang-format


find . -type f \( -name "*.h" -o -name "*.cpp" \) -exec clang-format -i {} +
```
