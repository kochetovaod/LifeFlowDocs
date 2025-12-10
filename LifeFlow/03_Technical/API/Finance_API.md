# Finance API (v1)

## Категории
- `GET /v1/finance/categories` — список.
- `POST /v1/finance/categories` — `{name, type: income|expense, color?, request_id}`
- `PATCH /v1/finance/categories/{id}` — обновление.

## Транзакции
- `GET /v1/finance/transactions` — фильтры: `from`, `to`, `category_id`, `cursor`, `limit`.
- `POST /v1/finance/transactions` — `{amount, currency, category_id?, happened_at, note?, request_id}`
- `PATCH /v1/finance/transactions/{id}` — любые поля + `request_id`.
- `DELETE /v1/finance/transactions/{id}` — soft delete.

## Бюджеты и отчёты
- `POST /v1/finance/budgets` — `{category_id?, period_start, period_end, limit_amount, currency, request_id}`
- `GET /v1/finance/summary` — агрегаты по периодам, прогноз до конца месяца, перерасход.

Все суммы в API передаются в копейках/центах (integer) либо decimal, согласовано по `currency`.
