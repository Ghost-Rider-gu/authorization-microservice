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

package corp.siendev.auth.service.model;

import lombok.Data;
import org.hibernate.validator.constraints.Range;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import java.io.Serializable;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User model.
 *
 * @author Golubnichenko_Yuriy
 */
@Data
@Entity
@Table(name = "user")
public class User implements Serializable {

    private static final Long serialVersionUID = 23487982311093L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "login")
    private String login;

    @Column(name = "password")
    @Range(min = 8)
    private String password;

    @Column(name = "created_at", columnDefinition = "DATETIME")
    private Date createdAt;

    @Column(name = "updated_at", columnDefinition = "DATETIME")
    private Date updatedAt;

    @Column(name = "deleted_at", columnDefinition = "DATETIME")
    private Date deletedAt;

    @ManyToMany
    @JoinTable(name = "user_service", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "service_id", referencedColumnName = "id"))
    private Set<Service> services = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    private Set<Role> roles = new HashSet<>();
}
