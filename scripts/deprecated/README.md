# 废弃脚本说明

这个目录包含已废弃的脚本，保留仅供参考。

## 废弃原因

| 文件 | 原因 | 替代方案 |
|-----|------|---------|
| `full_update.py` | 功能已整合到 manage.py | `python3 manage.py import --all --clear` |
| `generate_all_html.py` | 功能已整合到 manage.py | `python3 manage.py generate --all` |
| `generate_subject_graphs.py` | 硬编码旧目录名，已过时 | `python3 manage.py generate --subject <学科>` |

## 建议

这些文件可以在确认不再需要后删除。
