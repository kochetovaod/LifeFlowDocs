# AI Planner API (v1)

## POST /v1/ai/plan_week
- Body: `{goals[], tasks[], calendar[], preferences{focus_hours[], sleep, timezone}, request_id}`
- Response: `{plan: [ {day, slots:[{starts_at, ends_at, type(task|focus|rest), task_id?}]} ], notes, model_version}`

## POST /v1/ai/insights
- Body: `{period, metrics, request_id}`
- Response: текстовые выводы и списки рекомендаций.

## POST /v1/ai/rephrase
- Body: `{text, tone (friendly|formal), request_id}`

## Безопасность
- Требуется Bearer токен; лимит 5 запросов/мин на пользователя.
- Поля `user_id` не передаются в LLM; вместо них хэш.

## Версионирование
- Заголовок `X-AI-Model` и `X-Prompt-Version` для отслеживания качества; сохраняем в `ai_plans`.
