<?php

/*
 * This file is part of the Sylius package.
 *
 * (c) Paweł Jędrzejewski
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

declare(strict_types=1);

namespace Sylius\Component\Core\Model;

use Sylius\Component\Order\Model\AdjustmentInterface as BaseAdjustmentInterface;

interface AdjustmentInterface extends BaseAdjustmentInterface
{
    public const ORDER_ITEM_PROMOTION_ADJUSTMENT = 'order_item_promotion';

    public const ORDER_PROMOTION_ADJUSTMENT = 'order_promotion';

    public const ORDER_SHIPPING_PROMOTION_ADJUSTMENT = 'order_shipping_promotion';

    public const ORDER_UNIT_PROMOTION_ADJUSTMENT = 'order_unit_promotion';

    public const SHIPPING_ADJUSTMENT = 'shipping';

    public const TAX_ADJUSTMENT = 'tax';

    public const DETAILS_ASSOCIATED_WITH_ORDER_ITEM_UNIT = 'order_item_unit';

    public const DETAILS_ASSOCIATED_WITH_SHIPMENT = 'shipment';
}
