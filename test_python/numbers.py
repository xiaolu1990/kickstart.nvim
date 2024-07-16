from typing import (
    Iterable,
)


def sum_even_numbers(
    numbers: Iterable[int],
) -> int:
    return sum(num for num in numbers if num % 2 == 0)
