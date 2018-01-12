/*
 * Copyright (c) 2018 SienDev company. All rights reserved.
 *
 * This is a free software; you can redistribute it and/or modify it under the terms of the
 * GNU Lesser General Public License as published by the Free Software Foundation;
 * either version 2.1 of the License, or (at your option) any later version.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 */

package corp.siendev.auth.service.repository;

import corp.siendev.auth.service.model.Role;
import org.springframework.data.repository.CrudRepository;

/**
 * Role repository interface.
 *
 * @author Golubnichenko_Yuriy
 */
public interface RoleRepository extends CrudRepository<Role, Long> {
}
