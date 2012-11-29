<?php

namespace Psa\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class PsaUserBundle extends Bundle
{
    public function getParent()
    {
    return 'FOSUserBundle';
    }
}
