<?php

/**
 * Minimal example of keeping business logic outside a controller.
 * Adapt to the application's conventions before production use.
 */
final class ExampleOrderService
{
    public function calculateTotal(int $quantity, float $unitPrice): float
    {
        if ($quantity < 1 || $unitPrice < 0) {
            throw new InvalidArgumentException('Invalid order values.');
        }

        return round($quantity * $unitPrice, 2);
    }
}
