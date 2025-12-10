# Goals API (v1)

## GET /v1/goals
- Query: `status?`, `area?`, `cursor?`, `limit?`

## POST /v1/goals
- Body: `{title, description?, area?, target_date?, request_id}`

## PATCH /v1/goals/{id}
- Body: `{title?, description?, area?, target_date?, status?, progress?, request_id}`

## DELETE /v1/goals/{id}
- Soft delete; body `{request_id}`.

## Метрики и прогресс
- `GET /v1/goals/{id}/progress` — агрегированный прогресс по задачам.
- `POST /v1/goals/{id}/progress` — ручное обновление прогресса `{progress, note?, request_id}`.

Ответ включает связанные активные задачи (до 5) для виджета «Фокус дня».
