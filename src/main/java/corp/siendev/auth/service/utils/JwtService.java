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

package corp.siendev.auth.service.utils;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import org.springframework.boot.autoconfigure.security.SecurityProperties;

public class JwtService {

    public String createJwtToken(SecurityProperties.User user) {
        JwtBuilder builder = Jwts.builder().setSubject(user.getName());
        return "";
    }
}
