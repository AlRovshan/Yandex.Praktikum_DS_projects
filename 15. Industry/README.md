# Промышленость

Для оптимизации производственных расходов, металлургический комбинат решил уменьшить потребление электроэнергии на этапе обработки стали. 

**Целью проекта** является построение модели предсказывающая температуру стали, которая в дальнейшем минимизирует расходы электроэнергии.

### Описание данных

Данные состоят из файлов, полученных из разных источников:

- `data_arc.csv` — данные об электродах;
- `data_bulk.csv` — данные о подаче сыпучих материалов (объём);
- `data_bulk_time.csv` *—* данные о подаче сыпучих материалов (время);
- `data_gas.csv` — данные о продувке сплава газом;
- `data_temp.csv` — результаты измерения температуры;
- `data_wire.csv` — данные о проволочных материалах (объём);
- `data_wire_time.csv` — данные о проволочных материалах (время).

Во всех файлах столбец `key` содержит номер партии. В файлах может быть несколько строк с одинаковым значением `key`: они соответствуют разным итерациям обработки.

## План решения задачи

- Импортировать данные, провести исследовательский анализ данных
- Провести предобработку данных

- Подготовить данные:
    - Определить признаки необхимые для нашей будущей модели
    - Удалить ненужные данные
    
    
- Соединить все нужные данные в одну таблицу с признаками key
- Выбирать признаки и целевой признак
- Выделить 30% тестовых данных из всего объема данных, и проверить на тестовой выборке
- Использовать XGBoost, CatBoost и LinearRegression с подбором нужных параметров
- Сравнить полученные результаты наших моделей и выделим лучшую