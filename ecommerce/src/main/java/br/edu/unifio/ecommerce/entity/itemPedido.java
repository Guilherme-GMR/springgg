package br.edu.unifio.ecommerce.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter

public class itemPedido {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Integer Id;

    private Integer quantidade;
    private BigDecimal valorUnitario;

    @ManyToOne 
    private Pedido pedido;

    @ManyToOne
    private Produto produto;
}
