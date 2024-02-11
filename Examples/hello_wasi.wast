(module
  (type $0 (func (result i32)))
  (type $1 (func (param i32 i32 i32) (result i32)))
  (type $2 (func))
  (type $3 (func (param i32)))
  (type $4 (func (param i32) (result i32)))
  (type $5 (func (param i32 i32) (result i32)))
  (type $6 (func (param i32 i64 i32) (result i64)))
  (type $7 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $8 (func (param i32 i32)))
  (type $9 (func (param i64 i32) (result i32)))
  (type $10 (func (param i32 i64 i64 i32)))
  (type $11 (func (param i32 i32 i32 i32) (result i32)))
  (type $12 (func (param f64 i32) (result f64)))
  (type $13 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $14 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type $15 (func (param i32 i32 i32)))
  (type $16 (func (param i32 i32 i32 i32)))
  (type $17 (func (param i64 i32 i32) (result i32)))
  (type $18 (func (param i32 i32 i32 i32 i32)))
  (type $19 (func (param f64) (result i64)))
  (type $20 (func (param i64 i64) (result f64)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $29 (param i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $30 (param i32 i32 i32 i32) (result i32)))
  (memory $22  256 256)
  (table $21  7 7 funcref)
  (global $23  (mut i32) (i32.const 65536))
  (global $24  (mut i32) (i32.const 0))
  (global $25  (mut i32) (i32.const 0))
  (export "memory" (memory $22))
  (export "__indirect_function_table" (table $21))
  (export "_start" (func $33))
  (export "emscripten_stack_init" (func $79))
  (export "emscripten_stack_get_free" (func $80))
  (export "emscripten_stack_get_base" (func $81))
  (export "emscripten_stack_get_end" (func $82))
  (export "stackSave" (func $83))
  (export "stackRestore" (func $84))
  (export "emscripten_stack_get_current" (func $85))
  (elem $26 (i32.const 1)
    $31 $40 $39 $41 $66 $67)

  (func $31 (type $2)
    call $79
    call $73
    )

  (func $32 (type $0)
    (result i32)
    (local $0 i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $23
    local.set $0
    i32.const 16
    local.set $1
    local.get $0
    local.get $1
    i32.sub
    local.set $2
    local.get $2
    global.set $23
    i32.const 0
    local.set $3
    local.get $2
    local.get $3
    i32.store offset=12
    i32.const 65590
    local.set $4
    i32.const 0
    local.set $5
    local.get $4
    local.get $5
    call $38
    drop
    i32.const 0
    local.set $6
    i32.const 16
    local.set $7
    local.get $2
    local.get $7
    i32.add
    local.set $8
    local.get $8
    global.set $23
    local.get $6
    return
    )

  (func $33 (type $2)
    block $block
      i32.const 1
      i32.eqz
      br_if $block
      call $31
    end ;; $block
    call $32
    call $36
    unreachable
    )

  (func $34 (type $2)
    )

  (func $35 (type $2)
    (local $0 i32)
    i32.const 0
    local.set $0
    block $block
      i32.const 0
      i32.const 0
      i32.le_u
      br_if $block
      loop $loop
        local.get $0
        i32.const -4
        i32.add
        local.tee $0
        i32.load
        call_indirect $21 (type $2)
        local.get $0
        i32.const 0
        i32.gt_u
        br_if $loop
      end ;; $loop
    end ;; $block
    call $34
    )

  (func $36 (type $3)
    (param $0 i32)
    call $34
    call $35
    call $49
    local.get $0
    call $37
    unreachable
    )

  (func $37 (type $3)
    (param $0 i32)
    local.get $0
    call $29
    unreachable
    )

  (func $38 (type $5)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    global.get $23
    i32.const 16
    i32.sub
    local.tee $2
    global.set $23
    local.get $2
    local.get $1
    i32.store offset=12
    i32.const 66096
    local.get $0
    local.get $1
    call $65
    local.set $1
    local.get $2
    i32.const 16
    i32.add
    global.set $23
    local.get $1
    )

  (func $39 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    global.get $23
    i32.const 32
    i32.sub
    local.tee $3
    global.set $23
    local.get $3
    local.get $0
    i32.load offset=28
    local.tee $4
    i32.store offset=16
    local.get $0
    i32.load offset=20
    local.set $5
    local.get $3
    local.get $2
    i32.store offset=28
    local.get $3
    local.get $1
    i32.store offset=24
    local.get $3
    local.get $5
    local.get $4
    i32.sub
    local.tee $1
    i32.store offset=20
    local.get $1
    local.get $2
    i32.add
    local.set $6
    local.get $3
    i32.const 16
    i32.add
    local.set $4
    i32.const 2
    local.set $7
    block $block
      block $block_0
        block $block_1
          block $block_2
            block $block_3
              local.get $0
              i32.load offset=60
              local.get $3
              i32.const 16
              i32.add
              i32.const 2
              local.get $3
              i32.const 12
              i32.add
              call $30
              call $69
              i32.eqz
              br_if $block_3
              local.get $4
              local.set $5
              br $block_2
            end ;; $block_3
            loop $loop
              local.get $6
              local.get $3
              i32.load offset=12
              local.tee $1
              i32.eq
              br_if $block_1
              block $block_4
                local.get $1
                i32.const -1
                i32.gt_s
                br_if $block_4
                local.get $4
                local.set $5
                br $block_0
              end ;; $block_4
              local.get $4
              local.get $1
              local.get $4
              i32.load offset=4
              local.tee $8
              i32.gt_u
              local.tee $9
              i32.const 3
              i32.shl
              i32.add
              local.tee $5
              local.get $5
              i32.load
              local.get $1
              local.get $8
              i32.const 0
              local.get $9
              select
              i32.sub
              local.tee $8
              i32.add
              i32.store
              local.get $4
              i32.const 12
              i32.const 4
              local.get $9
              select
              i32.add
              local.tee $4
              local.get $4
              i32.load
              local.get $8
              i32.sub
              i32.store
              local.get $6
              local.get $1
              i32.sub
              local.set $6
              local.get $5
              local.set $4
              local.get $0
              i32.load offset=60
              local.get $5
              local.get $7
              local.get $9
              i32.sub
              local.tee $7
              local.get $3
              i32.const 12
              i32.add
              call $30
              call $69
              i32.eqz
              br_if $loop
            end ;; $loop
          end ;; $block_2
          local.get $6
          i32.const -1
          i32.ne
          br_if $block_0
        end ;; $block_1
        local.get $0
        local.get $0
        i32.load offset=44
        local.tee $1
        i32.store offset=28
        local.get $0
        local.get $1
        i32.store offset=20
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get $2
        local.set $1
        br $block
      end ;; $block_0
      i32.const 0
      local.set $1
      local.get $0
      i32.const 0
      i32.store offset=28
      local.get $0
      i64.const 0
      i64.store offset=16
      local.get $0
      local.get $0
      i32.load
      i32.const 32
      i32.or
      i32.store
      local.get $7
      i32.const 2
      i32.eq
      br_if $block
      local.get $2
      local.get $5
      i32.load offset=4
      i32.sub
      local.set $1
    end ;; $block
    local.get $3
    i32.const 32
    i32.add
    global.set $23
    local.get $1
    )

  (func $40 (type $4)
    (param $0 i32)
    (result i32)
    i32.const 0
    )

  (func $41 (type $6)
    (param $0 i32)
    (param $1 i64)
    (param $2 i32)
    (result i64)
    i64.const 0
    )

  (func $42 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i64)
    block $block
      local.get $2
      i32.eqz
      br_if $block
      local.get $0
      local.get $1
      i32.store8
      local.get $0
      local.get $2
      i32.add
      local.tee $3
      i32.const -1
      i32.add
      local.get $1
      i32.store8
      local.get $2
      i32.const 3
      i32.lt_u
      br_if $block
      local.get $0
      local.get $1
      i32.store8 offset=2
      local.get $0
      local.get $1
      i32.store8 offset=1
      local.get $3
      i32.const -3
      i32.add
      local.get $1
      i32.store8
      local.get $3
      i32.const -2
      i32.add
      local.get $1
      i32.store8
      local.get $2
      i32.const 7
      i32.lt_u
      br_if $block
      local.get $0
      local.get $1
      i32.store8 offset=3
      local.get $3
      i32.const -4
      i32.add
      local.get $1
      i32.store8
      local.get $2
      i32.const 9
      i32.lt_u
      br_if $block
      local.get $0
      i32.const 0
      local.get $0
      i32.sub
      i32.const 3
      i32.and
      local.tee $4
      i32.add
      local.tee $3
      local.get $1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $1
      i32.store
      local.get $3
      local.get $2
      local.get $4
      i32.sub
      i32.const -4
      i32.and
      local.tee $4
      i32.add
      local.tee $2
      i32.const -4
      i32.add
      local.get $1
      i32.store
      local.get $4
      i32.const 9
      i32.lt_u
      br_if $block
      local.get $3
      local.get $1
      i32.store offset=8
      local.get $3
      local.get $1
      i32.store offset=4
      local.get $2
      i32.const -8
      i32.add
      local.get $1
      i32.store
      local.get $2
      i32.const -12
      i32.add
      local.get $1
      i32.store
      local.get $4
      i32.const 25
      i32.lt_u
      br_if $block
      local.get $3
      local.get $1
      i32.store offset=24
      local.get $3
      local.get $1
      i32.store offset=20
      local.get $3
      local.get $1
      i32.store offset=16
      local.get $3
      local.get $1
      i32.store offset=12
      local.get $2
      i32.const -16
      i32.add
      local.get $1
      i32.store
      local.get $2
      i32.const -20
      i32.add
      local.get $1
      i32.store
      local.get $2
      i32.const -24
      i32.add
      local.get $1
      i32.store
      local.get $2
      i32.const -28
      i32.add
      local.get $1
      i32.store
      local.get $4
      local.get $3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $5
      i32.sub
      local.tee $2
      i32.const 32
      i32.lt_u
      br_if $block
      local.get $1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set $6
      local.get $3
      local.get $5
      i32.add
      local.set $1
      loop $loop
        local.get $1
        local.get $6
        i64.store offset=24
        local.get $1
        local.get $6
        i64.store offset=16
        local.get $1
        local.get $6
        i64.store offset=8
        local.get $1
        local.get $6
        i64.store
        local.get $1
        i32.const 32
        i32.add
        local.set $1
        local.get $2
        i32.const -32
        i32.add
        local.tee $2
        i32.const 31
        i32.gt_u
        br_if $loop
      end ;; $loop
    end ;; $block
    local.get $0
    )

  (func $43 (type $4)
    (param $0 i32)
    (result i32)
    i32.const 1
    )

  (func $44 (type $3)
    (param $0 i32)
    )

  (func $45 (type $0)
    (result i32)
    i32.const 67288
    )

  (func $46 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    local.get $0
    local.get $2
    i32.add
    local.set $3
    block $block
      block $block_0
        block $block_1
          block $block_2
            local.get $1
            local.get $0
            i32.xor
            i32.const 3
            i32.and
            br_if $block_2
            local.get $0
            i32.const 3
            i32.and
            i32.eqz
            br_if $block_1
            local.get $2
            i32.const 1
            i32.lt_s
            br_if $block_1
            local.get $0
            local.set $2
            loop $loop
              local.get $2
              local.get $1
              i32.load8_u
              i32.store8
              local.get $1
              i32.const 1
              i32.add
              local.set $1
              local.get $2
              i32.const 1
              i32.add
              local.tee $2
              i32.const 3
              i32.and
              i32.eqz
              br_if $block_0
              local.get $2
              local.get $3
              i32.lt_u
              br_if $loop
              br $block_0
            end ;; $loop
            unreachable
          end ;; $block_2
          block $block_3
            local.get $3
            i32.const 4
            i32.lt_u
            br_if $block_3
            local.get $3
            i32.const -4
            i32.add
            local.tee $4
            local.get $0
            i32.lt_u
            br_if $block_3
            local.get $0
            local.set $2
            loop $loop_0
              local.get $2
              local.get $1
              i32.load8_u
              i32.store8
              local.get $2
              local.get $1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get $2
              local.get $1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get $2
              local.get $1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get $1
              i32.const 4
              i32.add
              local.set $1
              local.get $2
              i32.const 4
              i32.add
              local.tee $2
              local.get $4
              i32.le_u
              br_if $loop_0
              br $block
            end ;; $loop_0
            unreachable
          end ;; $block_3
          local.get $0
          local.set $2
          br $block
        end ;; $block_1
        local.get $0
        local.set $2
      end ;; $block_0
      block $block_4
        local.get $3
        i32.const -4
        i32.and
        local.tee $4
        i32.const 64
        i32.lt_u
        br_if $block_4
        local.get $2
        local.get $4
        i32.const -64
        i32.add
        local.tee $5
        i32.gt_u
        br_if $block_4
        loop $loop_1
          local.get $2
          local.get $1
          i32.load
          i32.store
          local.get $2
          local.get $1
          i32.load offset=4
          i32.store offset=4
          local.get $2
          local.get $1
          i32.load offset=8
          i32.store offset=8
          local.get $2
          local.get $1
          i32.load offset=12
          i32.store offset=12
          local.get $2
          local.get $1
          i32.load offset=16
          i32.store offset=16
          local.get $2
          local.get $1
          i32.load offset=20
          i32.store offset=20
          local.get $2
          local.get $1
          i32.load offset=24
          i32.store offset=24
          local.get $2
          local.get $1
          i32.load offset=28
          i32.store offset=28
          local.get $2
          local.get $1
          i32.load offset=32
          i32.store offset=32
          local.get $2
          local.get $1
          i32.load offset=36
          i32.store offset=36
          local.get $2
          local.get $1
          i32.load offset=40
          i32.store offset=40
          local.get $2
          local.get $1
          i32.load offset=44
          i32.store offset=44
          local.get $2
          local.get $1
          i32.load offset=48
          i32.store offset=48
          local.get $2
          local.get $1
          i32.load offset=52
          i32.store offset=52
          local.get $2
          local.get $1
          i32.load offset=56
          i32.store offset=56
          local.get $2
          local.get $1
          i32.load offset=60
          i32.store offset=60
          local.get $1
          i32.const 64
          i32.add
          local.set $1
          local.get $2
          i32.const 64
          i32.add
          local.tee $2
          local.get $5
          i32.le_u
          br_if $loop_1
        end ;; $loop_1
      end ;; $block_4
      local.get $2
      local.get $4
      i32.ge_u
      br_if $block
      loop $loop_2
        local.get $2
        local.get $1
        i32.load
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $2
        i32.const 4
        i32.add
        local.tee $2
        local.get $4
        i32.lt_u
        br_if $loop_2
      end ;; $loop_2
    end ;; $block
    block $block_5
      local.get $2
      local.get $3
      i32.ge_u
      br_if $block_5
      loop $loop_3
        local.get $2
        local.get $1
        i32.load8_u
        i32.store8
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        local.get $2
        i32.const 1
        i32.add
        local.tee $2
        local.get $3
        i32.ne
        br_if $loop_3
      end ;; $loop_3
    end ;; $block_5
    local.get $0
    )

  (func $47 (type $3)
    (param $0 i32)
    )

  (func $48 (type $0)
    (result i32)
    i32.const 67292
    call $47
    i32.const 67296
    )

  (func $49 (type $2)
    (local $0 i32)
    block $block
      call $48
      i32.load
      local.tee $0
      i32.eqz
      br_if $block
      loop $loop
        local.get $0
        call $50
        local.get $0
        i32.load offset=56
        local.tee $0
        br_if $loop
      end ;; $loop
    end ;; $block
    i32.const 0
    i32.load offset=67300
    call $50
    i32.const 0
    i32.load offset=66240
    call $50
    i32.const 0
    i32.load offset=67300
    call $50
    )

  (func $50 (type $3)
    (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    block $block
      local.get $0
      i32.eqz
      br_if $block
      block $block_0
        local.get $0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if $block_0
        local.get $0
        call $43
        drop
      end ;; $block_0
      block $block_1
        local.get $0
        i32.load offset=20
        local.get $0
        i32.load offset=28
        i32.eq
        br_if $block_1
        local.get $0
        i32.const 0
        i32.const 0
        local.get $0
        i32.load offset=36
        call_indirect $21 (type $1)
        drop
      end ;; $block_1
      local.get $0
      i32.load offset=4
      local.tee $1
      local.get $0
      i32.load offset=8
      local.tee $2
      i32.eq
      br_if $block
      local.get $0
      local.get $1
      local.get $2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $0
      i32.load offset=40
      call_indirect $21 (type $6)
      drop
    end ;; $block
    )

  (func $51 (type $4)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    local.get $0
    local.get $0
    i32.load offset=72
    local.tee $1
    i32.const -1
    i32.add
    local.get $1
    i32.or
    i32.store offset=72
    block $block
      local.get $0
      i32.load
      local.tee $1
      i32.const 8
      i32.and
      i32.eqz
      br_if $block
      local.get $0
      local.get $1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end ;; $block
    local.get $0
    i64.const 0
    i64.store offset=4 align=4
    local.get $0
    local.get $0
    i32.load offset=44
    local.tee $1
    i32.store offset=28
    local.get $0
    local.get $1
    i32.store offset=20
    local.get $0
    local.get $1
    local.get $0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0
    )

  (func $52 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    local.get $2
    i32.const 0
    i32.ne
    local.set $3
    block $block
      block $block_0
        block $block_1
          local.get $0
          i32.const 3
          i32.and
          i32.eqz
          br_if $block_1
          local.get $2
          i32.eqz
          br_if $block_1
          local.get $1
          i32.const 255
          i32.and
          local.set $4
          loop $loop
            local.get $0
            i32.load8_u
            local.get $4
            i32.eq
            br_if $block_0
            local.get $2
            i32.const -1
            i32.add
            local.tee $2
            i32.const 0
            i32.ne
            local.set $3
            local.get $0
            i32.const 1
            i32.add
            local.tee $0
            i32.const 3
            i32.and
            i32.eqz
            br_if $block_1
            local.get $2
            br_if $loop
          end ;; $loop
        end ;; $block_1
        local.get $3
        i32.eqz
        br_if $block
        block $block_2
          local.get $0
          i32.load8_u
          local.get $1
          i32.const 255
          i32.and
          i32.eq
          br_if $block_2
          local.get $2
          i32.const 4
          i32.lt_u
          br_if $block_2
          local.get $1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set $4
          loop $loop_0
            local.get $0
            i32.load
            local.get $4
            i32.xor
            local.tee $3
            i32.const -1
            i32.xor
            local.get $3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if $block_0
            local.get $0
            i32.const 4
            i32.add
            local.set $0
            local.get $2
            i32.const -4
            i32.add
            local.tee $2
            i32.const 3
            i32.gt_u
            br_if $loop_0
          end ;; $loop_0
        end ;; $block_2
        local.get $2
        i32.eqz
        br_if $block
      end ;; $block_0
      local.get $1
      i32.const 255
      i32.and
      local.set $3
      loop $loop_1
        block $block_3
          local.get $0
          i32.load8_u
          local.get $3
          i32.ne
          br_if $block_3
          local.get $0
          return
        end ;; $block_3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
        local.get $2
        i32.const -1
        i32.add
        local.tee $2
        br_if $loop_1
      end ;; $loop_1
    end ;; $block
    i32.const 0
    )

  (func $53 (type $5)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    local.get $0
    i32.const 0
    local.get $1
    call $52
    local.tee $2
    local.get $0
    i32.sub
    local.get $1
    local.get $2
    select
    )

  (func $54 (type $12)
    (param $0 f64)
    (param $1 i32)
    (result f64)
    (local $2 i64)
    (local $3 i32)
    block $block
      local.get $0
      i64.reinterpret_f64
      local.tee $2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee $3
      i32.const 2047
      i32.eq
      br_if $block
      block $block_0
        local.get $3
        br_if $block_0
        block $block_1
          block $block_2
            local.get $0
            f64.const 0x0.0000000000000p-1023
            f64.ne
            br_if $block_2
            i32.const 0
            local.set $3
            br $block_1
          end ;; $block_2
          local.get $0
          f64.const 0x1.0000000000000p+64
          f64.mul
          local.get $1
          call $54
          local.set $0
          local.get $1
          i32.load
          i32.const -64
          i32.add
          local.set $3
        end ;; $block_1
        local.get $1
        local.get $3
        i32.store
        local.get $0
        return
      end ;; $block_0
      local.get $1
      local.get $3
      i32.const -1022
      i32.add
      i32.store
      local.get $2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set $0
    end ;; $block
    local.get $0
    )

  (func $55 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    block $block
      block $block_0
        local.get $2
        i32.load offset=16
        local.tee $3
        br_if $block_0
        i32.const 0
        local.set $4
        local.get $2
        call $51
        br_if $block
        local.get $2
        i32.load offset=16
        local.set $3
      end ;; $block_0
      block $block_1
        local.get $3
        local.get $2
        i32.load offset=20
        local.tee $4
        i32.sub
        local.get $1
        i32.ge_u
        br_if $block_1
        local.get $2
        local.get $0
        local.get $1
        local.get $2
        i32.load offset=36
        call_indirect $21 (type $1)
        return
      end ;; $block_1
      block $block_2
        block $block_3
          local.get $2
          i32.load offset=80
          i32.const 0
          i32.lt_s
          br_if $block_3
          local.get $1
          i32.eqz
          br_if $block_3
          local.get $1
          local.set $3
          block $block_4
            loop $loop
              local.get $0
              local.get $3
              i32.add
              local.tee $5
              i32.const -1
              i32.add
              i32.load8_u
              i32.const 10
              i32.eq
              br_if $block_4
              local.get $3
              i32.const -1
              i32.add
              local.tee $3
              i32.eqz
              br_if $block_3
              br $loop
            end ;; $loop
            unreachable
          end ;; $block_4
          local.get $2
          local.get $0
          local.get $3
          local.get $2
          i32.load offset=36
          call_indirect $21 (type $1)
          local.tee $4
          local.get $3
          i32.lt_u
          br_if $block
          local.get $1
          local.get $3
          i32.sub
          local.set $1
          local.get $2
          i32.load offset=20
          local.set $4
          br $block_2
        end ;; $block_3
        local.get $0
        local.set $5
        i32.const 0
        local.set $3
      end ;; $block_2
      local.get $4
      local.get $5
      local.get $1
      call $46
      drop
      local.get $2
      local.get $2
      i32.load offset=20
      local.get $1
      i32.add
      i32.store offset=20
      local.get $3
      local.get $1
      i32.add
      local.set $4
    end ;; $block
    local.get $4
    )

  (func $56 (type $13)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    (param $4 i32)
    (result i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    global.get $23
    i32.const 208
    i32.sub
    local.tee $5
    global.set $23
    local.get $5
    local.get $2
    i32.store offset=204
    local.get $5
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call $42
    drop
    local.get $5
    local.get $5
    i32.load offset=204
    i32.store offset=200
    block $block
      block $block_0
        i32.const 0
        local.get $1
        local.get $5
        i32.const 200
        i32.add
        local.get $5
        i32.const 80
        i32.add
        local.get $5
        i32.const 160
        i32.add
        local.get $3
        local.get $4
        call $57
        i32.const 0
        i32.ge_s
        br_if $block_0
        i32.const -1
        local.set $4
        br $block
      end ;; $block_0
      block $block_1
        block $block_2
          local.get $0
          i32.load offset=76
          i32.const 0
          i32.ge_s
          br_if $block_2
          i32.const 1
          local.set $6
          br $block_1
        end ;; $block_2
        local.get $0
        call $43
        i32.eqz
        local.set $6
      end ;; $block_1
      local.get $0
      local.get $0
      i32.load
      local.tee $7
      i32.const -33
      i32.and
      i32.store
      block $block_3
        block $block_4
          block $block_5
            block $block_6
              local.get $0
              i32.load offset=48
              br_if $block_6
              local.get $0
              i32.const 80
              i32.store offset=48
              local.get $0
              i32.const 0
              i32.store offset=28
              local.get $0
              i64.const 0
              i64.store offset=16
              local.get $0
              i32.load offset=44
              local.set $8
              local.get $0
              local.get $5
              i32.store offset=44
              br $block_5
            end ;; $block_6
            i32.const 0
            local.set $8
            local.get $0
            i32.load offset=16
            br_if $block_4
          end ;; $block_5
          i32.const -1
          local.set $2
          local.get $0
          call $51
          br_if $block_3
        end ;; $block_4
        local.get $0
        local.get $1
        local.get $5
        i32.const 200
        i32.add
        local.get $5
        i32.const 80
        i32.add
        local.get $5
        i32.const 160
        i32.add
        local.get $3
        local.get $4
        call $57
        local.set $2
      end ;; $block_3
      local.get $7
      i32.const 32
      i32.and
      local.set $4
      block $block_7
        local.get $8
        i32.eqz
        br_if $block_7
        local.get $0
        i32.const 0
        i32.const 0
        local.get $0
        i32.load offset=36
        call_indirect $21 (type $1)
        drop
        local.get $0
        i32.const 0
        i32.store offset=48
        local.get $0
        local.get $8
        i32.store offset=44
        local.get $0
        i32.const 0
        i32.store offset=28
        local.get $0
        i32.load offset=20
        local.set $3
        local.get $0
        i64.const 0
        i64.store offset=16
        local.get $2
        i32.const -1
        local.get $3
        select
        local.set $2
      end ;; $block_7
      local.get $0
      local.get $0
      i32.load
      local.tee $3
      local.get $4
      i32.or
      i32.store
      i32.const -1
      local.get $2
      local.get $3
      i32.const 32
      i32.and
      select
      local.set $4
      local.get $6
      br_if $block
      local.get $0
      call $44
    end ;; $block
    local.get $5
    i32.const 208
    i32.add
    global.set $23
    local.get $4
    )

  (func $57 (type $14)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    (param $4 i32)
    (param $5 i32)
    (param $6 i32)
    (result i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    (local $21 i32)
    (local $22 i32)
    (local $23 i32)
    (local $24 i32)
    (local $25 i64)
    global.get $23
    i32.const 80
    i32.sub
    local.tee $7
    global.set $23
    local.get $7
    local.get $1
    i32.store offset=76
    local.get $7
    i32.const 55
    i32.add
    local.set $8
    local.get $7
    i32.const 56
    i32.add
    local.set $9
    i32.const 0
    local.set $10
    i32.const 0
    local.set $11
    block $block
      block $block_0
        block $block_1
          block $block_2
            loop $loop
              i32.const 0
              local.set $12
              loop $loop_0
                local.get $1
                local.set $13
                local.get $12
                local.get $11
                i32.const 2147483647
                i32.xor
                i32.gt_s
                br_if $block_2
                local.get $12
                local.get $11
                i32.add
                local.set $11
                local.get $13
                local.set $12
                block $block_3
                  block $block_4
                    block $block_5
                      block $block_6
                        block $block_7
                          local.get $13
                          i32.load8_u
                          local.tee $14
                          i32.eqz
                          br_if $block_7
                          loop $loop_1
                            block $block_8
                              block $block_9
                                block $block_10
                                  local.get $14
                                  i32.const 255
                                  i32.and
                                  local.tee $14
                                  br_if $block_10
                                  local.get $12
                                  local.set $1
                                  br $block_9
                                end ;; $block_10
                                local.get $14
                                i32.const 37
                                i32.ne
                                br_if $block_8
                                local.get $12
                                local.set $14
                                loop $loop_2
                                  block $block_11
                                    local.get $14
                                    i32.load8_u offset=1
                                    i32.const 37
                                    i32.eq
                                    br_if $block_11
                                    local.get $14
                                    local.set $1
                                    br $block_9
                                  end ;; $block_11
                                  local.get $12
                                  i32.const 1
                                  i32.add
                                  local.set $12
                                  local.get $14
                                  i32.load8_u offset=2
                                  local.set $15
                                  local.get $14
                                  i32.const 2
                                  i32.add
                                  local.tee $1
                                  local.set $14
                                  local.get $15
                                  i32.const 37
                                  i32.eq
                                  br_if $loop_2
                                end ;; $loop_2
                              end ;; $block_9
                              local.get $12
                              local.get $13
                              i32.sub
                              local.tee $12
                              local.get $11
                              i32.const 2147483647
                              i32.xor
                              local.tee $14
                              i32.gt_s
                              br_if $block_2
                              block $block_12
                                local.get $0
                                i32.eqz
                                br_if $block_12
                                local.get $0
                                local.get $13
                                local.get $12
                                call $58
                              end ;; $block_12
                              local.get $12
                              br_if $loop_0
                              local.get $7
                              local.get $1
                              i32.store offset=76
                              local.get $1
                              i32.const 1
                              i32.add
                              local.set $12
                              i32.const -1
                              local.set $16
                              block $block_13
                                local.get $1
                                i32.load8_s offset=1
                                i32.const -48
                                i32.add
                                local.tee $15
                                i32.const 9
                                i32.gt_u
                                br_if $block_13
                                local.get $1
                                i32.load8_u offset=2
                                i32.const 36
                                i32.ne
                                br_if $block_13
                                local.get $1
                                i32.const 3
                                i32.add
                                local.set $12
                                i32.const 1
                                local.set $10
                                local.get $15
                                local.set $16
                              end ;; $block_13
                              local.get $7
                              local.get $12
                              i32.store offset=76
                              i32.const 0
                              local.set $17
                              block $block_14
                                block $block_15
                                  local.get $12
                                  i32.load8_s
                                  local.tee $18
                                  i32.const -32
                                  i32.add
                                  local.tee $1
                                  i32.const 31
                                  i32.le_u
                                  br_if $block_15
                                  local.get $12
                                  local.set $15
                                  br $block_14
                                end ;; $block_15
                                i32.const 0
                                local.set $17
                                local.get $12
                                local.set $15
                                i32.const 1
                                local.get $1
                                i32.shl
                                local.tee $1
                                i32.const 75913
                                i32.and
                                i32.eqz
                                br_if $block_14
                                loop $loop_3
                                  local.get $7
                                  local.get $12
                                  i32.const 1
                                  i32.add
                                  local.tee $15
                                  i32.store offset=76
                                  local.get $1
                                  local.get $17
                                  i32.or
                                  local.set $17
                                  local.get $12
                                  i32.load8_s offset=1
                                  local.tee $18
                                  i32.const -32
                                  i32.add
                                  local.tee $1
                                  i32.const 32
                                  i32.ge_u
                                  br_if $block_14
                                  local.get $15
                                  local.set $12
                                  i32.const 1
                                  local.get $1
                                  i32.shl
                                  local.tee $1
                                  i32.const 75913
                                  i32.and
                                  br_if $loop_3
                                end ;; $loop_3
                              end ;; $block_14
                              block $block_16
                                block $block_17
                                  local.get $18
                                  i32.const 42
                                  i32.ne
                                  br_if $block_17
                                  block $block_18
                                    block $block_19
                                      local.get $15
                                      i32.load8_s offset=1
                                      i32.const -48
                                      i32.add
                                      local.tee $12
                                      i32.const 9
                                      i32.gt_u
                                      br_if $block_19
                                      local.get $15
                                      i32.load8_u offset=2
                                      i32.const 36
                                      i32.ne
                                      br_if $block_19
                                      block $block_20
                                        block $block_21
                                          local.get $0
                                          br_if $block_21
                                          local.get $4
                                          local.get $12
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 10
                                          i32.store
                                          i32.const 0
                                          local.set $19
                                          br $block_20
                                        end ;; $block_21
                                        local.get $3
                                        local.get $12
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        i32.load
                                        local.set $19
                                      end ;; $block_20
                                      local.get $15
                                      i32.const 3
                                      i32.add
                                      local.set $1
                                      i32.const 1
                                      local.set $10
                                      br $block_18
                                    end ;; $block_19
                                    local.get $10
                                    br_if $block_6
                                    local.get $15
                                    i32.const 1
                                    i32.add
                                    local.set $1
                                    block $block_22
                                      local.get $0
                                      br_if $block_22
                                      local.get $7
                                      local.get $1
                                      i32.store offset=76
                                      i32.const 0
                                      local.set $10
                                      i32.const 0
                                      local.set $19
                                      br $block_16
                                    end ;; $block_22
                                    local.get $2
                                    local.get $2
                                    i32.load
                                    local.tee $12
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get $12
                                    i32.load
                                    local.set $19
                                    i32.const 0
                                    local.set $10
                                  end ;; $block_18
                                  local.get $7
                                  local.get $1
                                  i32.store offset=76
                                  local.get $19
                                  i32.const -1
                                  i32.gt_s
                                  br_if $block_16
                                  i32.const 0
                                  local.get $19
                                  i32.sub
                                  local.set $19
                                  local.get $17
                                  i32.const 8192
                                  i32.or
                                  local.set $17
                                  br $block_16
                                end ;; $block_17
                                local.get $7
                                i32.const 76
                                i32.add
                                call $59
                                local.tee $19
                                i32.const 0
                                i32.lt_s
                                br_if $block_2
                                local.get $7
                                i32.load offset=76
                                local.set $1
                              end ;; $block_16
                              i32.const 0
                              local.set $12
                              i32.const -1
                              local.set $20
                              block $block_23
                                block $block_24
                                  local.get $1
                                  i32.load8_u
                                  i32.const 46
                                  i32.eq
                                  br_if $block_24
                                  i32.const 0
                                  local.set $21
                                  br $block_23
                                end ;; $block_24
                                block $block_25
                                  local.get $1
                                  i32.load8_u offset=1
                                  i32.const 42
                                  i32.ne
                                  br_if $block_25
                                  block $block_26
                                    block $block_27
                                      local.get $1
                                      i32.load8_s offset=2
                                      i32.const -48
                                      i32.add
                                      local.tee $15
                                      i32.const 9
                                      i32.gt_u
                                      br_if $block_27
                                      local.get $1
                                      i32.load8_u offset=3
                                      i32.const 36
                                      i32.ne
                                      br_if $block_27
                                      block $block_28
                                        block $block_29
                                          local.get $0
                                          br_if $block_29
                                          local.get $4
                                          local.get $15
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 10
                                          i32.store
                                          i32.const 0
                                          local.set $20
                                          br $block_28
                                        end ;; $block_29
                                        local.get $3
                                        local.get $15
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        i32.load
                                        local.set $20
                                      end ;; $block_28
                                      local.get $1
                                      i32.const 4
                                      i32.add
                                      local.set $1
                                      br $block_26
                                    end ;; $block_27
                                    local.get $10
                                    br_if $block_6
                                    local.get $1
                                    i32.const 2
                                    i32.add
                                    local.set $1
                                    block $block_30
                                      local.get $0
                                      br_if $block_30
                                      i32.const 0
                                      local.set $20
                                      br $block_26
                                    end ;; $block_30
                                    local.get $2
                                    local.get $2
                                    i32.load
                                    local.tee $15
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get $15
                                    i32.load
                                    local.set $20
                                  end ;; $block_26
                                  local.get $7
                                  local.get $1
                                  i32.store offset=76
                                  local.get $20
                                  i32.const -1
                                  i32.gt_s
                                  local.set $21
                                  br $block_23
                                end ;; $block_25
                                local.get $7
                                local.get $1
                                i32.const 1
                                i32.add
                                i32.store offset=76
                                i32.const 1
                                local.set $21
                                local.get $7
                                i32.const 76
                                i32.add
                                call $59
                                local.set $20
                                local.get $7
                                i32.load offset=76
                                local.set $1
                              end ;; $block_23
                              loop $loop_4
                                local.get $12
                                local.set $15
                                i32.const 28
                                local.set $22
                                local.get $1
                                local.tee $18
                                i32.load8_s
                                local.tee $12
                                i32.const -123
                                i32.add
                                i32.const -58
                                i32.lt_u
                                br_if $block_1
                                local.get $18
                                i32.const 1
                                i32.add
                                local.set $1
                                local.get $12
                                local.get $15
                                i32.const 58
                                i32.mul
                                i32.add
                                i32.const 65551
                                i32.add
                                i32.load8_u
                                local.tee $12
                                i32.const -1
                                i32.add
                                i32.const 8
                                i32.lt_u
                                br_if $loop_4
                              end ;; $loop_4
                              local.get $7
                              local.get $1
                              i32.store offset=76
                              block $block_31
                                block $block_32
                                  local.get $12
                                  i32.const 27
                                  i32.eq
                                  br_if $block_32
                                  local.get $12
                                  i32.eqz
                                  br_if $block_1
                                  block $block_33
                                    local.get $16
                                    i32.const 0
                                    i32.lt_s
                                    br_if $block_33
                                    block $block_34
                                      local.get $0
                                      br_if $block_34
                                      local.get $4
                                      local.get $16
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      local.get $12
                                      i32.store
                                      br $loop
                                    end ;; $block_34
                                    local.get $7
                                    local.get $3
                                    local.get $16
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    i64.load
                                    i64.store offset=64
                                    br $block_31
                                  end ;; $block_33
                                  local.get $0
                                  i32.eqz
                                  br_if $block_3
                                  local.get $7
                                  i32.const 64
                                  i32.add
                                  local.get $12
                                  local.get $2
                                  local.get $6
                                  call $60
                                  br $block_31
                                end ;; $block_32
                                local.get $16
                                i32.const -1
                                i32.gt_s
                                br_if $block_1
                                i32.const 0
                                local.set $12
                                local.get $0
                                i32.eqz
                                br_if $loop_0
                              end ;; $block_31
                              local.get $0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $block_0
                              local.get $17
                              i32.const -65537
                              i32.and
                              local.tee $23
                              local.get $17
                              local.get $17
                              i32.const 8192
                              i32.and
                              select
                              local.set $17
                              i32.const 0
                              local.set $16
                              i32.const 65536
                              local.set $24
                              local.get $9
                              local.set $22
                              block $block_35
                                block $block_36
                                  block $block_37
                                    block $block_38
                                      block $block_39
                                        block $block_40
                                          block $block_41
                                            block $block_42
                                              block $block_43
                                                block $block_44
                                                  block $block_45
                                                    block $block_46
                                                      block $block_47
                                                        block $block_48
                                                          block $block_49
                                                            block $block_50
                                                              local.get $18
                                                              i32.load8_s
                                                              local.tee $12
                                                              i32.const -45
                                                              i32.and
                                                              local.get $12
                                                              local.get $12
                                                              i32.const 15
                                                              i32.and
                                                              i32.const 3
                                                              i32.eq
                                                              select
                                                              local.get $12
                                                              local.get $15
                                                              select
                                                              local.tee $12
                                                              i32.const -88
                                                              i32.add
                                                              br_table
                                                                $block_46 $block_4 $block_4 $block_4 $block_4 $block_4 $block_4 $block_4 $block_4 $block_36 $block_4 $block_35 $block_44 $block_36 $block_36 $block_36
                                                                $block_4 $block_44 $block_4 $block_4 $block_4 $block_4 $block_48 $block_45 $block_47 $block_4 $block_4 $block_41 $block_4 $block_49 $block_4 $block_4
                                                                $block_46
                                                                $block_50 ;; default
                                                            end ;; $block_50
                                                            local.get $9
                                                            local.set $22
                                                            block $block_51
                                                              local.get $12
                                                              i32.const -65
                                                              i32.add
                                                              br_table
                                                                $block_36 $block_4 $block_39 $block_4 $block_36 $block_36 $block_36
                                                                $block_51 ;; default
                                                            end ;; $block_51
                                                            local.get $12
                                                            i32.const 83
                                                            i32.eq
                                                            br_if $block_40
                                                            br $block_5
                                                          end ;; $block_49
                                                          i32.const 0
                                                          local.set $16
                                                          i32.const 65536
                                                          local.set $24
                                                          local.get $7
                                                          i64.load offset=64
                                                          local.set $25
                                                          br $block_43
                                                        end ;; $block_48
                                                        i32.const 0
                                                        local.set $12
                                                        block $block_52
                                                          block $block_53
                                                            block $block_54
                                                              block $block_55
                                                                block $block_56
                                                                  block $block_57
                                                                    block $block_58
                                                                      local.get $15
                                                                      i32.const 255
                                                                      i32.and
                                                                      br_table
                                                                        $block_58 $block_57 $block_56 $block_55 $block_54 $loop_0 $block_53 $block_52
                                                                        $loop_0 ;; default
                                                                    end ;; $block_58
                                                                    local.get $7
                                                                    i32.load offset=64
                                                                    local.get $11
                                                                    i32.store
                                                                    br $loop_0
                                                                  end ;; $block_57
                                                                  local.get $7
                                                                  i32.load offset=64
                                                                  local.get $11
                                                                  i32.store
                                                                  br $loop_0
                                                                end ;; $block_56
                                                                local.get $7
                                                                i32.load offset=64
                                                                local.get $11
                                                                i64.extend_i32_s
                                                                i64.store
                                                                br $loop_0
                                                              end ;; $block_55
                                                              local.get $7
                                                              i32.load offset=64
                                                              local.get $11
                                                              i32.store16
                                                              br $loop_0
                                                            end ;; $block_54
                                                            local.get $7
                                                            i32.load offset=64
                                                            local.get $11
                                                            i32.store8
                                                            br $loop_0
                                                          end ;; $block_53
                                                          local.get $7
                                                          i32.load offset=64
                                                          local.get $11
                                                          i32.store
                                                          br $loop_0
                                                        end ;; $block_52
                                                        local.get $7
                                                        i32.load offset=64
                                                        local.get $11
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br $loop_0
                                                      end ;; $block_47
                                                      local.get $20
                                                      i32.const 8
                                                      local.get $20
                                                      i32.const 8
                                                      i32.gt_u
                                                      select
                                                      local.set $20
                                                      local.get $17
                                                      i32.const 8
                                                      i32.or
                                                      local.set $17
                                                      i32.const 120
                                                      local.set $12
                                                    end ;; $block_46
                                                    local.get $7
                                                    i64.load offset=64
                                                    local.get $9
                                                    local.get $12
                                                    i32.const 32
                                                    i32.and
                                                    call $61
                                                    local.set $13
                                                    i32.const 0
                                                    local.set $16
                                                    i32.const 65536
                                                    local.set $24
                                                    local.get $7
                                                    i64.load offset=64
                                                    i64.eqz
                                                    br_if $block_42
                                                    local.get $17
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if $block_42
                                                    local.get $12
                                                    i32.const 4
                                                    i32.shr_u
                                                    i32.const 65536
                                                    i32.add
                                                    local.set $24
                                                    i32.const 2
                                                    local.set $16
                                                    br $block_42
                                                  end ;; $block_45
                                                  i32.const 0
                                                  local.set $16
                                                  i32.const 65536
                                                  local.set $24
                                                  local.get $7
                                                  i64.load offset=64
                                                  local.get $9
                                                  call $62
                                                  local.set $13
                                                  local.get $17
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if $block_42
                                                  local.get $20
                                                  local.get $9
                                                  local.get $13
                                                  i32.sub
                                                  local.tee $12
                                                  i32.const 1
                                                  i32.add
                                                  local.get $20
                                                  local.get $12
                                                  i32.gt_s
                                                  select
                                                  local.set $20
                                                  br $block_42
                                                end ;; $block_44
                                                block $block_59
                                                  local.get $7
                                                  i64.load offset=64
                                                  local.tee $25
                                                  i64.const -1
                                                  i64.gt_s
                                                  br_if $block_59
                                                  local.get $7
                                                  i64.const 0
                                                  local.get $25
                                                  i64.sub
                                                  local.tee $25
                                                  i64.store offset=64
                                                  i32.const 1
                                                  local.set $16
                                                  i32.const 65536
                                                  local.set $24
                                                  br $block_43
                                                end ;; $block_59
                                                block $block_60
                                                  local.get $17
                                                  i32.const 2048
                                                  i32.and
                                                  i32.eqz
                                                  br_if $block_60
                                                  i32.const 1
                                                  local.set $16
                                                  i32.const 65537
                                                  local.set $24
                                                  br $block_43
                                                end ;; $block_60
                                                i32.const 65538
                                                i32.const 65536
                                                local.get $17
                                                i32.const 1
                                                i32.and
                                                local.tee $16
                                                select
                                                local.set $24
                                              end ;; $block_43
                                              local.get $25
                                              local.get $9
                                              call $63
                                              local.set $13
                                            end ;; $block_42
                                            local.get $21
                                            local.get $20
                                            i32.const 0
                                            i32.lt_s
                                            i32.and
                                            br_if $block_2
                                            local.get $17
                                            i32.const -65537
                                            i32.and
                                            local.get $17
                                            local.get $21
                                            select
                                            local.set $17
                                            block $block_61
                                              local.get $7
                                              i64.load offset=64
                                              local.tee $25
                                              i64.const 0
                                              i64.ne
                                              br_if $block_61
                                              local.get $20
                                              br_if $block_61
                                              local.get $9
                                              local.set $13
                                              local.get $9
                                              local.set $22
                                              i32.const 0
                                              local.set $20
                                              br $block_4
                                            end ;; $block_61
                                            local.get $20
                                            local.get $9
                                            local.get $13
                                            i32.sub
                                            local.get $25
                                            i64.eqz
                                            i32.add
                                            local.tee $12
                                            local.get $20
                                            local.get $12
                                            i32.gt_s
                                            select
                                            local.set $20
                                            br $block_5
                                          end ;; $block_41
                                          local.get $7
                                          i32.load offset=64
                                          local.tee $12
                                          i32.const 65583
                                          local.get $12
                                          select
                                          local.set $13
                                          local.get $13
                                          local.get $13
                                          local.get $20
                                          i32.const 2147483647
                                          local.get $20
                                          i32.const 2147483647
                                          i32.lt_u
                                          select
                                          call $53
                                          local.tee $12
                                          i32.add
                                          local.set $22
                                          block $block_62
                                            local.get $20
                                            i32.const -1
                                            i32.le_s
                                            br_if $block_62
                                            local.get $23
                                            local.set $17
                                            local.get $12
                                            local.set $20
                                            br $block_4
                                          end ;; $block_62
                                          local.get $23
                                          local.set $17
                                          local.get $12
                                          local.set $20
                                          local.get $22
                                          i32.load8_u
                                          br_if $block_2
                                          br $block_4
                                        end ;; $block_40
                                        block $block_63
                                          local.get $20
                                          i32.eqz
                                          br_if $block_63
                                          local.get $7
                                          i32.load offset=64
                                          local.set $14
                                          br $block_38
                                        end ;; $block_63
                                        i32.const 0
                                        local.set $12
                                        local.get $0
                                        i32.const 32
                                        local.get $19
                                        i32.const 0
                                        local.get $17
                                        call $64
                                        br $block_37
                                      end ;; $block_39
                                      local.get $7
                                      i32.const 0
                                      i32.store offset=12
                                      local.get $7
                                      local.get $7
                                      i64.load offset=64
                                      i64.store32 offset=8
                                      local.get $7
                                      local.get $7
                                      i32.const 8
                                      i32.add
                                      i32.store offset=64
                                      local.get $7
                                      i32.const 8
                                      i32.add
                                      local.set $14
                                      i32.const -1
                                      local.set $20
                                    end ;; $block_38
                                    i32.const 0
                                    local.set $12
                                    block $block_64
                                      loop $loop_5
                                        local.get $14
                                        i32.load
                                        local.tee $15
                                        i32.eqz
                                        br_if $block_64
                                        local.get $7
                                        i32.const 4
                                        i32.add
                                        local.get $15
                                        call $75
                                        local.tee $15
                                        i32.const 0
                                        i32.lt_s
                                        br_if $block_0
                                        local.get $15
                                        local.get $20
                                        local.get $12
                                        i32.sub
                                        i32.gt_u
                                        br_if $block_64
                                        local.get $14
                                        i32.const 4
                                        i32.add
                                        local.set $14
                                        local.get $15
                                        local.get $12
                                        i32.add
                                        local.tee $12
                                        local.get $20
                                        i32.lt_u
                                        br_if $loop_5
                                      end ;; $loop_5
                                    end ;; $block_64
                                    i32.const 61
                                    local.set $22
                                    local.get $12
                                    i32.const 0
                                    i32.lt_s
                                    br_if $block_1
                                    local.get $0
                                    i32.const 32
                                    local.get $19
                                    local.get $12
                                    local.get $17
                                    call $64
                                    block $block_65
                                      local.get $12
                                      br_if $block_65
                                      i32.const 0
                                      local.set $12
                                      br $block_37
                                    end ;; $block_65
                                    i32.const 0
                                    local.set $15
                                    local.get $7
                                    i32.load offset=64
                                    local.set $14
                                    loop $loop_6
                                      local.get $14
                                      i32.load
                                      local.tee $13
                                      i32.eqz
                                      br_if $block_37
                                      local.get $7
                                      i32.const 4
                                      i32.add
                                      local.get $13
                                      call $75
                                      local.tee $13
                                      local.get $15
                                      i32.add
                                      local.tee $15
                                      local.get $12
                                      i32.gt_u
                                      br_if $block_37
                                      local.get $0
                                      local.get $7
                                      i32.const 4
                                      i32.add
                                      local.get $13
                                      call $58
                                      local.get $14
                                      i32.const 4
                                      i32.add
                                      local.set $14
                                      local.get $15
                                      local.get $12
                                      i32.lt_u
                                      br_if $loop_6
                                    end ;; $loop_6
                                  end ;; $block_37
                                  local.get $0
                                  i32.const 32
                                  local.get $19
                                  local.get $12
                                  local.get $17
                                  i32.const 8192
                                  i32.xor
                                  call $64
                                  local.get $19
                                  local.get $12
                                  local.get $19
                                  local.get $12
                                  i32.gt_s
                                  select
                                  local.set $12
                                  br $loop_0
                                end ;; $block_36
                                local.get $21
                                local.get $20
                                i32.const 0
                                i32.lt_s
                                i32.and
                                br_if $block_2
                                i32.const 61
                                local.set $22
                                local.get $0
                                local.get $7
                                f64.load offset=64
                                local.get $19
                                local.get $20
                                local.get $17
                                local.get $12
                                local.get $5
                                call_indirect $21 (type $7)
                                local.tee $12
                                i32.const 0
                                i32.ge_s
                                br_if $loop_0
                                br $block_1
                              end ;; $block_35
                              local.get $7
                              local.get $7
                              i64.load offset=64
                              i64.store8 offset=55
                              i32.const 1
                              local.set $20
                              local.get $8
                              local.set $13
                              local.get $9
                              local.set $22
                              local.get $23
                              local.set $17
                              br $block_4
                            end ;; $block_8
                            local.get $12
                            i32.load8_u offset=1
                            local.set $14
                            local.get $12
                            i32.const 1
                            i32.add
                            local.set $12
                            br $loop_1
                          end ;; $loop_1
                          unreachable
                        end ;; $block_7
                        local.get $0
                        br_if $block
                        local.get $10
                        i32.eqz
                        br_if $block_3
                        i32.const 1
                        local.set $12
                        block $block_66
                          loop $loop_7
                            local.get $4
                            local.get $12
                            i32.const 2
                            i32.shl
                            i32.add
                            i32.load
                            local.tee $14
                            i32.eqz
                            br_if $block_66
                            local.get $3
                            local.get $12
                            i32.const 3
                            i32.shl
                            i32.add
                            local.get $14
                            local.get $2
                            local.get $6
                            call $60
                            i32.const 1
                            local.set $11
                            local.get $12
                            i32.const 1
                            i32.add
                            local.tee $12
                            i32.const 10
                            i32.ne
                            br_if $loop_7
                            br $block
                          end ;; $loop_7
                          unreachable
                        end ;; $block_66
                        i32.const 1
                        local.set $11
                        local.get $12
                        i32.const 10
                        i32.ge_u
                        br_if $block
                        loop $loop_8
                          local.get $4
                          local.get $12
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          br_if $block_6
                          i32.const 1
                          local.set $11
                          local.get $12
                          i32.const 1
                          i32.add
                          local.tee $12
                          i32.const 10
                          i32.eq
                          br_if $block
                          br $loop_8
                        end ;; $loop_8
                        unreachable
                      end ;; $block_6
                      i32.const 28
                      local.set $22
                      br $block_1
                    end ;; $block_5
                    local.get $9
                    local.set $22
                  end ;; $block_4
                  local.get $20
                  local.get $22
                  local.get $13
                  i32.sub
                  local.tee $1
                  local.get $20
                  local.get $1
                  i32.gt_s
                  select
                  local.tee $18
                  local.get $16
                  i32.const 2147483647
                  i32.xor
                  i32.gt_s
                  br_if $block_2
                  i32.const 61
                  local.set $22
                  local.get $19
                  local.get $16
                  local.get $18
                  i32.add
                  local.tee $15
                  local.get $19
                  local.get $15
                  i32.gt_s
                  select
                  local.tee $12
                  local.get $14
                  i32.gt_s
                  br_if $block_1
                  local.get $0
                  i32.const 32
                  local.get $12
                  local.get $15
                  local.get $17
                  call $64
                  local.get $0
                  local.get $24
                  local.get $16
                  call $58
                  local.get $0
                  i32.const 48
                  local.get $12
                  local.get $15
                  local.get $17
                  i32.const 65536
                  i32.xor
                  call $64
                  local.get $0
                  i32.const 48
                  local.get $18
                  local.get $1
                  i32.const 0
                  call $64
                  local.get $0
                  local.get $13
                  local.get $1
                  call $58
                  local.get $0
                  i32.const 32
                  local.get $12
                  local.get $15
                  local.get $17
                  i32.const 8192
                  i32.xor
                  call $64
                  local.get $7
                  i32.load offset=76
                  local.set $1
                  br $loop_0
                end ;; $block_3
              end ;; $loop_0
            end ;; $loop
            i32.const 0
            local.set $11
            br $block
          end ;; $block_2
          i32.const 61
          local.set $22
        end ;; $block_1
        call $45
        local.get $22
        i32.store
      end ;; $block_0
      i32.const -1
      local.set $11
    end ;; $block
    local.get $7
    i32.const 80
    i32.add
    global.set $23
    local.get $11
    )

  (func $58 (type $15)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    block $block
      local.get $0
      i32.load8_u
      i32.const 32
      i32.and
      br_if $block
      local.get $1
      local.get $2
      local.get $0
      call $55
      drop
    end ;; $block
    )

  (func $59 (type $4)
    (param $0 i32)
    (result i32)
    (local $1 i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    i32.const 0
    local.set $1
    block $block
      local.get $0
      i32.load
      local.tee $2
      i32.load8_s
      i32.const -48
      i32.add
      local.tee $3
      i32.const 9
      i32.le_u
      br_if $block
      i32.const 0
      return
    end ;; $block
    loop $loop
      i32.const -1
      local.set $4
      block $block_0
        local.get $1
        i32.const 214748364
        i32.gt_u
        br_if $block_0
        i32.const -1
        local.get $3
        local.get $1
        i32.const 10
        i32.mul
        local.tee $1
        i32.add
        local.get $3
        local.get $1
        i32.const 2147483647
        i32.xor
        i32.gt_u
        select
        local.set $4
      end ;; $block_0
      local.get $0
      local.get $2
      i32.const 1
      i32.add
      local.tee $3
      i32.store
      local.get $2
      i32.load8_s offset=1
      local.set $5
      local.get $4
      local.set $1
      local.get $3
      local.set $2
      local.get $5
      i32.const -48
      i32.add
      local.tee $3
      i32.const 10
      i32.lt_u
      br_if $loop
    end ;; $loop
    local.get $4
    )

  (func $60 (type $16)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    block $block
      block $block_0
        block $block_1
          block $block_2
            block $block_3
              block $block_4
                block $block_5
                  block $block_6
                    block $block_7
                      block $block_8
                        block $block_9
                          block $block_10
                            block $block_11
                              block $block_12
                                block $block_13
                                  block $block_14
                                    block $block_15
                                      block $block_16
                                        block $block_17
                                          local.get $1
                                          i32.const -9
                                          i32.add
                                          br_table
                                            $block_17 $block_16 $block_15 $block_12 $block_14 $block_13 $block_11 $block_10 $block_9 $block_8 $block_7 $block_6 $block_5 $block_4 $block_3 $block_2
                                            $block_1 $block_0
                                            $block ;; default
                                        end ;; $block_17
                                        local.get $2
                                        local.get $2
                                        i32.load
                                        local.tee $1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get $0
                                        local.get $1
                                        i32.load
                                        i32.store
                                        return
                                      end ;; $block_16
                                      local.get $2
                                      local.get $2
                                      i32.load
                                      local.tee $1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get $0
                                      local.get $1
                                      i64.load32_s
                                      i64.store
                                      return
                                    end ;; $block_15
                                    local.get $2
                                    local.get $2
                                    i32.load
                                    local.tee $1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get $0
                                    local.get $1
                                    i64.load32_u
                                    i64.store
                                    return
                                  end ;; $block_14
                                  local.get $2
                                  local.get $2
                                  i32.load
                                  local.tee $1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $0
                                  local.get $1
                                  i64.load32_s
                                  i64.store
                                  return
                                end ;; $block_13
                                local.get $2
                                local.get $2
                                i32.load
                                local.tee $1
                                i32.const 4
                                i32.add
                                i32.store
                                local.get $0
                                local.get $1
                                i64.load32_u
                                i64.store
                                return
                              end ;; $block_12
                              local.get $2
                              local.get $2
                              i32.load
                              i32.const 7
                              i32.add
                              i32.const -8
                              i32.and
                              local.tee $1
                              i32.const 8
                              i32.add
                              i32.store
                              local.get $0
                              local.get $1
                              i64.load
                              i64.store
                              return
                            end ;; $block_11
                            local.get $2
                            local.get $2
                            i32.load
                            local.tee $1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get $0
                            local.get $1
                            i64.load16_s
                            i64.store
                            return
                          end ;; $block_10
                          local.get $2
                          local.get $2
                          i32.load
                          local.tee $1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get $0
                          local.get $1
                          i64.load16_u
                          i64.store
                          return
                        end ;; $block_9
                        local.get $2
                        local.get $2
                        i32.load
                        local.tee $1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get $0
                        local.get $1
                        i64.load8_s
                        i64.store
                        return
                      end ;; $block_8
                      local.get $2
                      local.get $2
                      i32.load
                      local.tee $1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get $0
                      local.get $1
                      i64.load8_u
                      i64.store
                      return
                    end ;; $block_7
                    local.get $2
                    local.get $2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee $1
                    i32.const 8
                    i32.add
                    i32.store
                    local.get $0
                    local.get $1
                    i64.load
                    i64.store
                    return
                  end ;; $block_6
                  local.get $2
                  local.get $2
                  i32.load
                  local.tee $1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get $0
                  local.get $1
                  i64.load32_u
                  i64.store
                  return
                end ;; $block_5
                local.get $2
                local.get $2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee $1
                i32.const 8
                i32.add
                i32.store
                local.get $0
                local.get $1
                i64.load
                i64.store
                return
              end ;; $block_4
              local.get $2
              local.get $2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee $1
              i32.const 8
              i32.add
              i32.store
              local.get $0
              local.get $1
              i64.load
              i64.store
              return
            end ;; $block_3
            local.get $2
            local.get $2
            i32.load
            local.tee $1
            i32.const 4
            i32.add
            i32.store
            local.get $0
            local.get $1
            i64.load32_s
            i64.store
            return
          end ;; $block_2
          local.get $2
          local.get $2
          i32.load
          local.tee $1
          i32.const 4
          i32.add
          i32.store
          local.get $0
          local.get $1
          i64.load32_u
          i64.store
          return
        end ;; $block_1
        local.get $2
        local.get $2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee $1
        i32.const 8
        i32.add
        i32.store
        local.get $0
        local.get $1
        f64.load
        f64.store
        return
      end ;; $block_0
      local.get $0
      local.get $2
      local.get $3
      call_indirect $21 (type $8)
    end ;; $block
    )

  (func $61 (type $17)
    (param $0 i64)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    block $block
      local.get $0
      i64.eqz
      br_if $block
      loop $loop
        local.get $1
        i32.const -1
        i32.add
        local.tee $1
        local.get $0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 66080
        i32.add
        i32.load8_u
        local.get $2
        i32.or
        i32.store8
        local.get $0
        i64.const 15
        i64.gt_u
        local.set $3
        local.get $0
        i64.const 4
        i64.shr_u
        local.set $0
        local.get $3
        br_if $loop
      end ;; $loop
    end ;; $block
    local.get $1
    )

  (func $62 (type $9)
    (param $0 i64)
    (param $1 i32)
    (result i32)
    (local $2 i32)
    block $block
      local.get $0
      i64.eqz
      br_if $block
      loop $loop
        local.get $1
        i32.const -1
        i32.add
        local.tee $1
        local.get $0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get $0
        i64.const 7
        i64.gt_u
        local.set $2
        local.get $0
        i64.const 3
        i64.shr_u
        local.set $0
        local.get $2
        br_if $loop
      end ;; $loop
    end ;; $block
    local.get $1
    )

  (func $63 (type $9)
    (param $0 i64)
    (param $1 i32)
    (result i32)
    (local $2 i64)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    block $block
      block $block_0
        local.get $0
        i64.const 4294967296
        i64.ge_u
        br_if $block_0
        local.get $0
        local.set $2
        br $block
      end ;; $block_0
      loop $loop
        local.get $1
        i32.const -1
        i32.add
        local.tee $1
        local.get $0
        local.get $0
        i64.const 10
        i64.div_u
        local.tee $2
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get $0
        i64.const 42949672959
        i64.gt_u
        local.set $3
        local.get $2
        local.set $0
        local.get $3
        br_if $loop
      end ;; $loop
    end ;; $block
    block $block_1
      local.get $2
      i32.wrap_i64
      local.tee $3
      i32.eqz
      br_if $block_1
      loop $loop_0
        local.get $1
        i32.const -1
        i32.add
        local.tee $1
        local.get $3
        local.get $3
        i32.const 10
        i32.div_u
        local.tee $4
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get $3
        i32.const 9
        i32.gt_u
        local.set $5
        local.get $4
        local.set $3
        local.get $5
        br_if $loop_0
      end ;; $loop_0
    end ;; $block_1
    local.get $1
    )

  (func $64 (type $18)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (param $3 i32)
    (param $4 i32)
    (local $5 i32)
    global.get $23
    i32.const 256
    i32.sub
    local.tee $5
    global.set $23
    block $block
      local.get $2
      local.get $3
      i32.le_s
      br_if $block
      local.get $4
      i32.const 73728
      i32.and
      br_if $block
      local.get $5
      local.get $1
      i32.const 255
      i32.and
      local.get $2
      local.get $3
      i32.sub
      local.tee $3
      i32.const 256
      local.get $3
      i32.const 256
      i32.lt_u
      local.tee $2
      select
      call $42
      drop
      block $block_0
        local.get $2
        br_if $block_0
        loop $loop
          local.get $0
          local.get $5
          i32.const 256
          call $58
          local.get $3
          i32.const -256
          i32.add
          local.tee $3
          i32.const 255
          i32.gt_u
          br_if $loop
        end ;; $loop
      end ;; $block_0
      local.get $0
      local.get $5
      local.get $3
      call $58
    end ;; $block
    local.get $5
    i32.const 256
    i32.add
    global.set $23
    )

  (func $65 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    local.get $0
    local.get $1
    local.get $2
    i32.const 5
    i32.const 6
    call $56
    )

  (func $66 (type $7)
    (param $0 i32)
    (param $1 f64)
    (param $2 i32)
    (param $3 i32)
    (param $4 i32)
    (param $5 i32)
    (result i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local $9 i32)
    (local $10 i32)
    (local $11 i32)
    (local $12 i32)
    (local $13 i32)
    (local $14 i32)
    (local $15 i32)
    (local $16 i32)
    (local $17 i32)
    (local $18 i32)
    (local $19 i32)
    (local $20 i32)
    (local $21 i32)
    (local $22 i32)
    (local $23 i32)
    (local $24 i64)
    (local $25 i64)
    (local $26 f64)
    global.get $23
    i32.const 560
    i32.sub
    local.tee $6
    global.set $23
    i32.const 0
    local.set $7
    local.get $6
    i32.const 0
    i32.store offset=44
    block $block
      block $block_0
        local.get $1
        call $68
        local.tee $24
        i64.const -1
        i64.gt_s
        br_if $block_0
        i32.const 1
        local.set $8
        i32.const 65546
        local.set $9
        local.get $1
        f64.neg
        local.tee $1
        call $68
        local.set $24
        br $block
      end ;; $block_0
      block $block_1
        local.get $4
        i32.const 2048
        i32.and
        i32.eqz
        br_if $block_1
        i32.const 1
        local.set $8
        i32.const 65549
        local.set $9
        br $block
      end ;; $block_1
      i32.const 65552
      i32.const 65547
      local.get $4
      i32.const 1
      i32.and
      local.tee $8
      select
      local.set $9
      local.get $8
      i32.eqz
      local.set $7
    end ;; $block
    block $block_2
      block $block_3
        local.get $24
        i64.const 9218868437227405312
        i64.and
        i64.const 9218868437227405312
        i64.ne
        br_if $block_3
        local.get $0
        i32.const 32
        local.get $2
        local.get $8
        i32.const 3
        i32.add
        local.tee $10
        local.get $4
        i32.const -65537
        i32.and
        call $64
        local.get $0
        local.get $9
        local.get $8
        call $58
        local.get $0
        i32.const 65565
        i32.const 65573
        local.get $5
        i32.const 32
        i32.and
        local.tee $11
        select
        i32.const 65569
        i32.const 65577
        local.get $11
        select
        local.get $1
        local.get $1
        f64.ne
        select
        i32.const 3
        call $58
        local.get $0
        i32.const 32
        local.get $2
        local.get $10
        local.get $4
        i32.const 8192
        i32.xor
        call $64
        local.get $10
        local.get $2
        local.get $10
        local.get $2
        i32.gt_s
        select
        local.set $12
        br $block_2
      end ;; $block_3
      local.get $6
      i32.const 16
      i32.add
      local.set $13
      block $block_4
        block $block_5
          block $block_6
            block $block_7
              local.get $1
              local.get $6
              i32.const 44
              i32.add
              call $54
              local.tee $1
              local.get $1
              f64.add
              local.tee $1
              f64.const 0x0.0000000000000p-1023
              f64.eq
              br_if $block_7
              local.get $6
              local.get $6
              i32.load offset=44
              local.tee $10
              i32.const -1
              i32.add
              i32.store offset=44
              local.get $5
              i32.const 32
              i32.or
              local.tee $14
              i32.const 97
              i32.ne
              br_if $block_6
              br $block_4
            end ;; $block_7
            local.get $5
            i32.const 32
            i32.or
            local.tee $14
            i32.const 97
            i32.eq
            br_if $block_4
            i32.const 6
            local.get $3
            local.get $3
            i32.const 0
            i32.lt_s
            select
            local.set $15
            local.get $6
            i32.load offset=44
            local.set $16
            br $block_5
          end ;; $block_6
          local.get $6
          local.get $10
          i32.const -29
          i32.add
          local.tee $16
          i32.store offset=44
          i32.const 6
          local.get $3
          local.get $3
          i32.const 0
          i32.lt_s
          select
          local.set $15
          local.get $1
          f64.const 0x1.0000000000000p+28
          f64.mul
          local.set $1
        end ;; $block_5
        local.get $6
        i32.const 48
        i32.add
        i32.const 0
        i32.const 288
        local.get $16
        i32.const 0
        i32.lt_s
        select
        i32.add
        local.tee $17
        local.set $11
        loop $loop
          block $block_8
            block $block_9
              local.get $1
              f64.const 0x1.0000000000000p+32
              f64.lt
              local.get $1
              f64.const 0x0.0000000000000p-1023
              f64.ge
              i32.and
              i32.eqz
              br_if $block_9
              local.get $1
              i32.trunc_f64_u
              local.set $10
              br $block_8
            end ;; $block_9
            i32.const 0
            local.set $10
          end ;; $block_8
          local.get $11
          local.get $10
          i32.store
          local.get $11
          i32.const 4
          i32.add
          local.set $11
          local.get $1
          local.get $10
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd6500000000p+29
          f64.mul
          local.tee $1
          f64.const 0x0.0000000000000p-1023
          f64.ne
          br_if $loop
        end ;; $loop
        block $block_10
          block $block_11
            local.get $16
            i32.const 1
            i32.ge_s
            br_if $block_11
            local.get $16
            local.set $3
            local.get $11
            local.set $10
            local.get $17
            local.set $18
            br $block_10
          end ;; $block_11
          local.get $17
          local.set $18
          local.get $16
          local.set $3
          loop $loop_0
            local.get $3
            i32.const 29
            local.get $3
            i32.const 29
            i32.lt_s
            select
            local.set $3
            block $block_12
              local.get $11
              i32.const -4
              i32.add
              local.tee $10
              local.get $18
              i32.lt_u
              br_if $block_12
              local.get $3
              i64.extend_i32_u
              local.set $25
              i64.const 0
              local.set $24
              loop $loop_1
                local.get $10
                local.get $10
                i64.load32_u
                local.get $25
                i64.shl
                local.get $24
                i64.const 4294967295
                i64.and
                i64.add
                local.tee $24
                local.get $24
                i64.const 1000000000
                i64.div_u
                local.tee $24
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get $10
                i32.const -4
                i32.add
                local.tee $10
                local.get $18
                i32.ge_u
                br_if $loop_1
              end ;; $loop_1
              local.get $24
              i32.wrap_i64
              local.tee $10
              i32.eqz
              br_if $block_12
              local.get $18
              i32.const -4
              i32.add
              local.tee $18
              local.get $10
              i32.store
            end ;; $block_12
            block $block_13
              loop $loop_2
                local.get $11
                local.tee $10
                local.get $18
                i32.le_u
                br_if $block_13
                local.get $10
                i32.const -4
                i32.add
                local.tee $11
                i32.load
                i32.eqz
                br_if $loop_2
              end ;; $loop_2
            end ;; $block_13
            local.get $6
            local.get $6
            i32.load offset=44
            local.get $3
            i32.sub
            local.tee $3
            i32.store offset=44
            local.get $10
            local.set $11
            local.get $3
            i32.const 0
            i32.gt_s
            br_if $loop_0
          end ;; $loop_0
        end ;; $block_10
        block $block_14
          local.get $3
          i32.const -1
          i32.gt_s
          br_if $block_14
          local.get $15
          i32.const 25
          i32.add
          i32.const 9
          i32.div_u
          i32.const 1
          i32.add
          local.set $19
          local.get $14
          i32.const 102
          i32.eq
          local.set $20
          loop $loop_3
            i32.const 0
            local.get $3
            i32.sub
            local.tee $11
            i32.const 9
            local.get $11
            i32.const 9
            i32.lt_s
            select
            local.set $21
            block $block_15
              block $block_16
                local.get $18
                local.get $10
                i32.lt_u
                br_if $block_16
                local.get $18
                i32.load
                i32.eqz
                i32.const 2
                i32.shl
                local.set $11
                br $block_15
              end ;; $block_16
              i32.const 1000000000
              local.get $21
              i32.shr_u
              local.set $22
              i32.const -1
              local.get $21
              i32.shl
              i32.const -1
              i32.xor
              local.set $23
              i32.const 0
              local.set $3
              local.get $18
              local.set $11
              loop $loop_4
                local.get $11
                local.get $11
                i32.load
                local.tee $12
                local.get $21
                i32.shr_u
                local.get $3
                i32.add
                i32.store
                local.get $12
                local.get $23
                i32.and
                local.get $22
                i32.mul
                local.set $3
                local.get $11
                i32.const 4
                i32.add
                local.tee $11
                local.get $10
                i32.lt_u
                br_if $loop_4
              end ;; $loop_4
              local.get $18
              i32.load
              i32.eqz
              i32.const 2
              i32.shl
              local.set $11
              local.get $3
              i32.eqz
              br_if $block_15
              local.get $10
              local.get $3
              i32.store
              local.get $10
              i32.const 4
              i32.add
              local.set $10
            end ;; $block_15
            local.get $6
            local.get $6
            i32.load offset=44
            local.get $21
            i32.add
            local.tee $3
            i32.store offset=44
            local.get $17
            local.get $18
            local.get $11
            i32.add
            local.tee $18
            local.get $20
            select
            local.tee $11
            local.get $19
            i32.const 2
            i32.shl
            i32.add
            local.get $10
            local.get $10
            local.get $11
            i32.sub
            i32.const 2
            i32.shr_s
            local.get $19
            i32.gt_s
            select
            local.set $10
            local.get $3
            i32.const 0
            i32.lt_s
            br_if $loop_3
          end ;; $loop_3
        end ;; $block_14
        i32.const 0
        local.set $3
        block $block_17
          local.get $18
          local.get $10
          i32.ge_u
          br_if $block_17
          local.get $17
          local.get $18
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set $3
          i32.const 10
          local.set $11
          local.get $18
          i32.load
          local.tee $12
          i32.const 10
          i32.lt_u
          br_if $block_17
          loop $loop_5
            local.get $3
            i32.const 1
            i32.add
            local.set $3
            local.get $12
            local.get $11
            i32.const 10
            i32.mul
            local.tee $11
            i32.ge_u
            br_if $loop_5
          end ;; $loop_5
        end ;; $block_17
        block $block_18
          local.get $15
          i32.const 0
          local.get $3
          local.get $14
          i32.const 102
          i32.eq
          select
          i32.sub
          local.get $15
          i32.const 0
          i32.ne
          local.get $14
          i32.const 103
          i32.eq
          i32.and
          i32.sub
          local.tee $11
          local.get $10
          local.get $17
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          i32.const -9
          i32.add
          i32.ge_s
          br_if $block_18
          local.get $6
          i32.const 48
          i32.add
          i32.const 4
          i32.const 292
          local.get $16
          i32.const 0
          i32.lt_s
          select
          i32.add
          local.get $11
          i32.const 9216
          i32.add
          local.tee $12
          i32.const 9
          i32.div_s
          local.tee $22
          i32.const 2
          i32.shl
          i32.add
          local.tee $19
          i32.const -4096
          i32.add
          local.set $21
          i32.const 10
          local.set $11
          block $block_19
            local.get $12
            local.get $22
            i32.const 9
            i32.mul
            i32.sub
            local.tee $12
            i32.const 7
            i32.gt_s
            br_if $block_19
            loop $loop_6
              local.get $11
              i32.const 10
              i32.mul
              local.set $11
              local.get $12
              i32.const 1
              i32.add
              local.tee $12
              i32.const 8
              i32.ne
              br_if $loop_6
            end ;; $loop_6
          end ;; $block_19
          local.get $19
          i32.const -4092
          i32.add
          local.set $23
          block $block_20
            block $block_21
              local.get $21
              i32.load
              local.tee $12
              local.get $12
              local.get $11
              i32.div_u
              local.tee $20
              local.get $11
              i32.mul
              i32.sub
              local.tee $22
              br_if $block_21
              local.get $23
              local.get $10
              i32.eq
              br_if $block_20
            end ;; $block_21
            block $block_22
              block $block_23
                local.get $20
                i32.const 1
                i32.and
                br_if $block_23
                f64.const 0x1.0000000000000p+53
                local.set $1
                local.get $11
                i32.const 1000000000
                i32.ne
                br_if $block_22
                local.get $21
                local.get $18
                i32.le_u
                br_if $block_22
                local.get $19
                i32.const -4100
                i32.add
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if $block_22
              end ;; $block_23
              f64.const 0x1.0000000000001p+53
              local.set $1
            end ;; $block_22
            f64.const 0x1.0000000000000p-1
            f64.const 0x1.0000000000000p-0
            f64.const 0x1.8000000000000p-0
            local.get $23
            local.get $10
            i32.eq
            select
            f64.const 0x1.8000000000000p-0
            local.get $22
            local.get $11
            i32.const 1
            i32.shr_u
            local.tee $23
            i32.eq
            select
            local.get $22
            local.get $23
            i32.lt_u
            select
            local.set $26
            block $block_24
              local.get $7
              br_if $block_24
              local.get $9
              i32.load8_u
              i32.const 45
              i32.ne
              br_if $block_24
              local.get $26
              f64.neg
              local.set $26
              local.get $1
              f64.neg
              local.set $1
            end ;; $block_24
            local.get $21
            local.get $12
            local.get $22
            i32.sub
            local.tee $12
            i32.store
            local.get $1
            local.get $26
            f64.add
            local.get $1
            f64.eq
            br_if $block_20
            local.get $21
            local.get $12
            local.get $11
            i32.add
            local.tee $11
            i32.store
            block $block_25
              local.get $11
              i32.const 1000000000
              i32.lt_u
              br_if $block_25
              loop $loop_7
                local.get $21
                i32.const 0
                i32.store
                block $block_26
                  local.get $21
                  i32.const -4
                  i32.add
                  local.tee $21
                  local.get $18
                  i32.ge_u
                  br_if $block_26
                  local.get $18
                  i32.const -4
                  i32.add
                  local.tee $18
                  i32.const 0
                  i32.store
                end ;; $block_26
                local.get $21
                local.get $21
                i32.load
                i32.const 1
                i32.add
                local.tee $11
                i32.store
                local.get $11
                i32.const 999999999
                i32.gt_u
                br_if $loop_7
              end ;; $loop_7
            end ;; $block_25
            local.get $17
            local.get $18
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set $3
            i32.const 10
            local.set $11
            local.get $18
            i32.load
            local.tee $12
            i32.const 10
            i32.lt_u
            br_if $block_20
            loop $loop_8
              local.get $3
              i32.const 1
              i32.add
              local.set $3
              local.get $12
              local.get $11
              i32.const 10
              i32.mul
              local.tee $11
              i32.ge_u
              br_if $loop_8
            end ;; $loop_8
          end ;; $block_20
          local.get $21
          i32.const 4
          i32.add
          local.tee $11
          local.get $10
          local.get $10
          local.get $11
          i32.gt_u
          select
          local.set $10
        end ;; $block_18
        block $block_27
          loop $loop_9
            local.get $10
            local.tee $11
            local.get $18
            i32.le_u
            local.tee $12
            br_if $block_27
            local.get $11
            i32.const -4
            i32.add
            local.tee $10
            i32.load
            i32.eqz
            br_if $loop_9
          end ;; $loop_9
        end ;; $block_27
        block $block_28
          block $block_29
            local.get $14
            i32.const 103
            i32.eq
            br_if $block_29
            local.get $4
            i32.const 8
            i32.and
            local.set $21
            br $block_28
          end ;; $block_29
          local.get $3
          i32.const -1
          i32.xor
          i32.const -1
          local.get $15
          i32.const 1
          local.get $15
          select
          local.tee $10
          local.get $3
          i32.gt_s
          local.get $3
          i32.const -5
          i32.gt_s
          i32.and
          local.tee $21
          select
          local.get $10
          i32.add
          local.set $15
          i32.const -1
          i32.const -2
          local.get $21
          select
          local.get $5
          i32.add
          local.set $5
          local.get $4
          i32.const 8
          i32.and
          local.tee $21
          br_if $block_28
          i32.const -9
          local.set $10
          block $block_30
            local.get $12
            br_if $block_30
            local.get $11
            i32.const -4
            i32.add
            i32.load
            local.tee $21
            i32.eqz
            br_if $block_30
            i32.const 10
            local.set $12
            i32.const 0
            local.set $10
            local.get $21
            i32.const 10
            i32.rem_u
            br_if $block_30
            loop $loop_10
              local.get $10
              local.tee $22
              i32.const 1
              i32.add
              local.set $10
              local.get $21
              local.get $12
              i32.const 10
              i32.mul
              local.tee $12
              i32.rem_u
              i32.eqz
              br_if $loop_10
            end ;; $loop_10
            local.get $22
            i32.const -1
            i32.xor
            local.set $10
          end ;; $block_30
          local.get $11
          local.get $17
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set $12
          block $block_31
            local.get $5
            i32.const -33
            i32.and
            i32.const 70
            i32.ne
            br_if $block_31
            i32.const 0
            local.set $21
            local.get $15
            local.get $12
            local.get $10
            i32.add
            i32.const -9
            i32.add
            local.tee $10
            i32.const 0
            local.get $10
            i32.const 0
            i32.gt_s
            select
            local.tee $10
            local.get $15
            local.get $10
            i32.lt_s
            select
            local.set $15
            br $block_28
          end ;; $block_31
          i32.const 0
          local.set $21
          local.get $15
          local.get $3
          local.get $12
          i32.add
          local.get $10
          i32.add
          i32.const -9
          i32.add
          local.tee $10
          i32.const 0
          local.get $10
          i32.const 0
          i32.gt_s
          select
          local.tee $10
          local.get $15
          local.get $10
          i32.lt_s
          select
          local.set $15
        end ;; $block_28
        i32.const -1
        local.set $12
        local.get $15
        i32.const 2147483645
        i32.const 2147483646
        local.get $15
        local.get $21
        i32.or
        local.tee $22
        select
        i32.gt_s
        br_if $block_2
        local.get $15
        local.get $22
        i32.const 0
        i32.ne
        i32.add
        i32.const 1
        i32.add
        local.set $23
        block $block_32
          block $block_33
            local.get $5
            i32.const -33
            i32.and
            local.tee $20
            i32.const 70
            i32.ne
            br_if $block_33
            local.get $3
            local.get $23
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if $block_2
            local.get $3
            i32.const 0
            local.get $3
            i32.const 0
            i32.gt_s
            select
            local.set $10
            br $block_32
          end ;; $block_33
          block $block_34
            local.get $13
            local.get $3
            local.get $3
            i32.const 31
            i32.shr_s
            local.tee $10
            i32.xor
            local.get $10
            i32.sub
            i64.extend_i32_u
            local.get $13
            call $63
            local.tee $10
            i32.sub
            i32.const 1
            i32.gt_s
            br_if $block_34
            loop $loop_11
              local.get $10
              i32.const -1
              i32.add
              local.tee $10
              i32.const 48
              i32.store8
              local.get $13
              local.get $10
              i32.sub
              i32.const 2
              i32.lt_s
              br_if $loop_11
            end ;; $loop_11
          end ;; $block_34
          local.get $10
          i32.const -2
          i32.add
          local.tee $19
          local.get $5
          i32.store8
          i32.const -1
          local.set $12
          local.get $10
          i32.const -1
          i32.add
          i32.const 45
          i32.const 43
          local.get $3
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get $13
          local.get $19
          i32.sub
          local.tee $10
          local.get $23
          i32.const 2147483647
          i32.xor
          i32.gt_s
          br_if $block_2
        end ;; $block_32
        i32.const -1
        local.set $12
        local.get $10
        local.get $23
        i32.add
        local.tee $10
        local.get $8
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if $block_2
        local.get $0
        i32.const 32
        local.get $2
        local.get $10
        local.get $8
        i32.add
        local.tee $23
        local.get $4
        call $64
        local.get $0
        local.get $9
        local.get $8
        call $58
        local.get $0
        i32.const 48
        local.get $2
        local.get $23
        local.get $4
        i32.const 65536
        i32.xor
        call $64
        block $block_35
          block $block_36
            block $block_37
              block $block_38
                local.get $20
                i32.const 70
                i32.ne
                br_if $block_38
                local.get $6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set $21
                local.get $6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set $3
                local.get $17
                local.get $18
                local.get $18
                local.get $17
                i32.gt_u
                select
                local.tee $12
                local.set $18
                loop $loop_12
                  local.get $18
                  i64.load32_u
                  local.get $3
                  call $63
                  local.set $10
                  block $block_39
                    block $block_40
                      local.get $18
                      local.get $12
                      i32.eq
                      br_if $block_40
                      local.get $10
                      local.get $6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if $block_39
                      loop $loop_13
                        local.get $10
                        i32.const -1
                        i32.add
                        local.tee $10
                        i32.const 48
                        i32.store8
                        local.get $10
                        local.get $6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if $loop_13
                        br $block_39
                      end ;; $loop_13
                      unreachable
                    end ;; $block_40
                    local.get $10
                    local.get $3
                    i32.ne
                    br_if $block_39
                    local.get $6
                    i32.const 48
                    i32.store8 offset=24
                    local.get $21
                    local.set $10
                  end ;; $block_39
                  local.get $0
                  local.get $10
                  local.get $3
                  local.get $10
                  i32.sub
                  call $58
                  local.get $18
                  i32.const 4
                  i32.add
                  local.tee $18
                  local.get $17
                  i32.le_u
                  br_if $loop_12
                end ;; $loop_12
                block $block_41
                  local.get $22
                  i32.eqz
                  br_if $block_41
                  local.get $0
                  i32.const 65581
                  i32.const 1
                  call $58
                end ;; $block_41
                local.get $18
                local.get $11
                i32.ge_u
                br_if $block_37
                local.get $15
                i32.const 1
                i32.lt_s
                br_if $block_37
                loop $loop_14
                  block $block_42
                    local.get $18
                    i64.load32_u
                    local.get $3
                    call $63
                    local.tee $10
                    local.get $6
                    i32.const 16
                    i32.add
                    i32.le_u
                    br_if $block_42
                    loop $loop_15
                      local.get $10
                      i32.const -1
                      i32.add
                      local.tee $10
                      i32.const 48
                      i32.store8
                      local.get $10
                      local.get $6
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if $loop_15
                    end ;; $loop_15
                  end ;; $block_42
                  local.get $0
                  local.get $10
                  local.get $15
                  i32.const 9
                  local.get $15
                  i32.const 9
                  i32.lt_s
                  select
                  call $58
                  local.get $15
                  i32.const -9
                  i32.add
                  local.set $10
                  local.get $18
                  i32.const 4
                  i32.add
                  local.tee $18
                  local.get $11
                  i32.ge_u
                  br_if $block_36
                  local.get $15
                  i32.const 9
                  i32.gt_s
                  local.set $12
                  local.get $10
                  local.set $15
                  local.get $12
                  br_if $loop_14
                  br $block_36
                end ;; $loop_14
                unreachable
              end ;; $block_38
              block $block_43
                local.get $15
                i32.const 0
                i32.lt_s
                br_if $block_43
                local.get $11
                local.get $18
                i32.const 4
                i32.add
                local.get $11
                local.get $18
                i32.gt_u
                select
                local.set $22
                local.get $6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set $17
                local.get $6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set $3
                local.get $18
                local.set $11
                loop $loop_16
                  block $block_44
                    local.get $11
                    i64.load32_u
                    local.get $3
                    call $63
                    local.tee $10
                    local.get $3
                    i32.ne
                    br_if $block_44
                    local.get $6
                    i32.const 48
                    i32.store8 offset=24
                    local.get $17
                    local.set $10
                  end ;; $block_44
                  block $block_45
                    block $block_46
                      local.get $11
                      local.get $18
                      i32.eq
                      br_if $block_46
                      local.get $10
                      local.get $6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if $block_45
                      loop $loop_17
                        local.get $10
                        i32.const -1
                        i32.add
                        local.tee $10
                        i32.const 48
                        i32.store8
                        local.get $10
                        local.get $6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if $loop_17
                        br $block_45
                      end ;; $loop_17
                      unreachable
                    end ;; $block_46
                    local.get $0
                    local.get $10
                    i32.const 1
                    call $58
                    local.get $10
                    i32.const 1
                    i32.add
                    local.set $10
                    local.get $15
                    local.get $21
                    i32.or
                    i32.eqz
                    br_if $block_45
                    local.get $0
                    i32.const 65581
                    i32.const 1
                    call $58
                  end ;; $block_45
                  local.get $0
                  local.get $10
                  local.get $3
                  local.get $10
                  i32.sub
                  local.tee $12
                  local.get $15
                  local.get $15
                  local.get $12
                  i32.gt_s
                  select
                  call $58
                  local.get $15
                  local.get $12
                  i32.sub
                  local.set $15
                  local.get $11
                  i32.const 4
                  i32.add
                  local.tee $11
                  local.get $22
                  i32.ge_u
                  br_if $block_43
                  local.get $15
                  i32.const -1
                  i32.gt_s
                  br_if $loop_16
                end ;; $loop_16
              end ;; $block_43
              local.get $0
              i32.const 48
              local.get $15
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call $64
              local.get $0
              local.get $19
              local.get $13
              local.get $19
              i32.sub
              call $58
              br $block_35
            end ;; $block_37
            local.get $15
            local.set $10
          end ;; $block_36
          local.get $0
          i32.const 48
          local.get $10
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call $64
        end ;; $block_35
        local.get $0
        i32.const 32
        local.get $2
        local.get $23
        local.get $4
        i32.const 8192
        i32.xor
        call $64
        local.get $23
        local.get $2
        local.get $23
        local.get $2
        i32.gt_s
        select
        local.set $12
        br $block_2
      end ;; $block_4
      local.get $9
      local.get $5
      i32.const 26
      i32.shl
      i32.const 31
      i32.shr_s
      i32.const 9
      i32.and
      i32.add
      local.set $23
      block $block_47
        local.get $3
        i32.const 11
        i32.gt_u
        br_if $block_47
        i32.const 12
        local.get $3
        i32.sub
        local.set $10
        f64.const 0x1.0000000000000p+4
        local.set $26
        loop $loop_18
          local.get $26
          f64.const 0x1.0000000000000p+4
          f64.mul
          local.set $26
          local.get $10
          i32.const -1
          i32.add
          local.tee $10
          br_if $loop_18
        end ;; $loop_18
        block $block_48
          local.get $23
          i32.load8_u
          i32.const 45
          i32.ne
          br_if $block_48
          local.get $26
          local.get $1
          f64.neg
          local.get $26
          f64.sub
          f64.add
          f64.neg
          local.set $1
          br $block_47
        end ;; $block_48
        local.get $1
        local.get $26
        f64.add
        local.get $26
        f64.sub
        local.set $1
      end ;; $block_47
      block $block_49
        local.get $6
        i32.load offset=44
        local.tee $10
        local.get $10
        i32.const 31
        i32.shr_s
        local.tee $10
        i32.xor
        local.get $10
        i32.sub
        i64.extend_i32_u
        local.get $13
        call $63
        local.tee $10
        local.get $13
        i32.ne
        br_if $block_49
        local.get $6
        i32.const 48
        i32.store8 offset=15
        local.get $6
        i32.const 15
        i32.add
        local.set $10
      end ;; $block_49
      local.get $8
      i32.const 2
      i32.or
      local.set $21
      local.get $5
      i32.const 32
      i32.and
      local.set $18
      local.get $6
      i32.load offset=44
      local.set $11
      local.get $10
      i32.const -2
      i32.add
      local.tee $22
      local.get $5
      i32.const 15
      i32.add
      i32.store8
      local.get $10
      i32.const -1
      i32.add
      i32.const 45
      i32.const 43
      local.get $11
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get $4
      i32.const 8
      i32.and
      local.set $12
      local.get $6
      i32.const 16
      i32.add
      local.set $11
      loop $loop_19
        local.get $11
        local.set $10
        block $block_50
          block $block_51
            local.get $1
            f64.abs
            f64.const 0x1.0000000000000p+31
            f64.lt
            i32.eqz
            br_if $block_51
            local.get $1
            i32.trunc_f64_s
            local.set $11
            br $block_50
          end ;; $block_51
          i32.const -2147483648
          local.set $11
        end ;; $block_50
        local.get $10
        local.get $11
        i32.const 66080
        i32.add
        i32.load8_u
        local.get $18
        i32.or
        i32.store8
        local.get $1
        local.get $11
        f64.convert_i32_s
        f64.sub
        f64.const 0x1.0000000000000p+4
        f64.mul
        local.set $1
        block $block_52
          local.get $10
          i32.const 1
          i32.add
          local.tee $11
          local.get $6
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if $block_52
          block $block_53
            local.get $12
            br_if $block_53
            local.get $3
            i32.const 0
            i32.gt_s
            br_if $block_53
            local.get $1
            f64.const 0x0.0000000000000p-1023
            f64.eq
            br_if $block_52
          end ;; $block_53
          local.get $10
          i32.const 46
          i32.store8 offset=1
          local.get $10
          i32.const 2
          i32.add
          local.set $11
        end ;; $block_52
        local.get $1
        f64.const 0x0.0000000000000p-1023
        f64.ne
        br_if $loop_19
      end ;; $loop_19
      i32.const -1
      local.set $12
      i32.const 2147483645
      local.get $21
      local.get $13
      local.get $22
      i32.sub
      local.tee $18
      i32.add
      local.tee $19
      i32.sub
      local.get $3
      i32.lt_s
      br_if $block_2
      local.get $0
      i32.const 32
      local.get $2
      local.get $19
      local.get $3
      i32.const 2
      i32.add
      local.get $11
      local.get $6
      i32.const 16
      i32.add
      i32.sub
      local.tee $10
      local.get $10
      i32.const -2
      i32.add
      local.get $3
      i32.lt_s
      select
      local.get $10
      local.get $3
      select
      local.tee $3
      i32.add
      local.tee $11
      local.get $4
      call $64
      local.get $0
      local.get $23
      local.get $21
      call $58
      local.get $0
      i32.const 48
      local.get $2
      local.get $11
      local.get $4
      i32.const 65536
      i32.xor
      call $64
      local.get $0
      local.get $6
      i32.const 16
      i32.add
      local.get $10
      call $58
      local.get $0
      i32.const 48
      local.get $3
      local.get $10
      i32.sub
      i32.const 0
      i32.const 0
      call $64
      local.get $0
      local.get $22
      local.get $18
      call $58
      local.get $0
      i32.const 32
      local.get $2
      local.get $11
      local.get $4
      i32.const 8192
      i32.xor
      call $64
      local.get $11
      local.get $2
      local.get $11
      local.get $2
      i32.gt_s
      select
      local.set $12
    end ;; $block_2
    local.get $6
    i32.const 560
    i32.add
    global.set $23
    local.get $12
    )

  (func $67 (type $8)
    (param $0 i32)
    (param $1 i32)
    (local $2 i32)
    local.get $1
    local.get $1
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee $2
    i32.const 16
    i32.add
    i32.store
    local.get $0
    local.get $2
    i64.load
    local.get $2
    i32.const 8
    i32.add
    i64.load
    call $78
    f64.store
    )

  (func $68 (type $19)
    (param $0 f64)
    (result i64)
    local.get $0
    i64.reinterpret_f64
    )

  (func $69 (type $4)
    (param $0 i32)
    (result i32)
    block $block
      local.get $0
      br_if $block
      i32.const 0
      return
    end ;; $block
    call $45
    local.get $0
    i32.store
    i32.const -1
    )

  (func $70 (type $0)
    (result i32)
    i32.const 42
    )

  (func $71 (type $0)
    (result i32)
    call $70
    )

  (func $72 (type $0)
    (result i32)
    i32.const 67360
    )

  (func $73 (type $2)
    i32.const 0
    i32.const 67336
    i32.store offset=67456
    i32.const 0
    call $71
    i32.store offset=67384
    )

  (func $74 (type $1)
    (param $0 i32)
    (param $1 i32)
    (param $2 i32)
    (result i32)
    (local $3 i32)
    i32.const 1
    local.set $3
    block $block
      block $block_0
        local.get $0
        i32.eqz
        br_if $block_0
        local.get $1
        i32.const 127
        i32.le_u
        br_if $block
        block $block_1
          block $block_2
            call $72
            i32.load offset=96
            i32.load
            br_if $block_2
            local.get $1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if $block
            call $45
            i32.const 25
            i32.store
            br $block_1
          end ;; $block_2
          block $block_3
            local.get $1
            i32.const 2047
            i32.gt_u
            br_if $block_3
            local.get $0
            local.get $1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get $0
            local.get $1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end ;; $block_3
          block $block_4
            block $block_5
              local.get $1
              i32.const 55296
              i32.lt_u
              br_if $block_5
              local.get $1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.ne
              br_if $block_4
            end ;; $block_5
            local.get $0
            local.get $1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get $0
            local.get $1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get $0
            local.get $1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end ;; $block_4
          block $block_6
            local.get $1
            i32.const -65536
            i32.add
            i32.const 1048575
            i32.gt_u
            br_if $block_6
            local.get $0
            local.get $1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get $0
            local.get $1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get $0
            local.get $1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get $0
            local.get $1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end ;; $block_6
          call $45
          i32.const 25
          i32.store
        end ;; $block_1
        i32.const -1
        local.set $3
      end ;; $block_0
      local.get $3
      return
    end ;; $block
    local.get $0
    local.get $1
    i32.store8
    i32.const 1
    )

  (func $75 (type $5)
    (param $0 i32)
    (param $1 i32)
    (result i32)
    block $block
      local.get $0
      br_if $block
      i32.const 0
      return
    end ;; $block
    local.get $0
    local.get $1
    i32.const 0
    call $74
    )

  (func $76 (type $10)
    (param $0 i32)
    (param $1 i64)
    (param $2 i64)
    (param $3 i32)
    (local $4 i64)
    block $block
      block $block_0
        local.get $3
        i32.const 64
        i32.and
        i32.eqz
        br_if $block_0
        local.get $1
        local.get $3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set $2
        i64.const 0
        local.set $1
        br $block
      end ;; $block_0
      local.get $3
      i32.eqz
      br_if $block
      local.get $1
      i32.const 64
      local.get $3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get $2
      local.get $3
      i64.extend_i32_u
      local.tee $4
      i64.shl
      i64.or
      local.set $2
      local.get $1
      local.get $4
      i64.shl
      local.set $1
    end ;; $block
    local.get $0
    local.get $1
    i64.store
    local.get $0
    local.get $2
    i64.store offset=8
    )

  (func $77 (type $10)
    (param $0 i32)
    (param $1 i64)
    (param $2 i64)
    (param $3 i32)
    (local $4 i64)
    block $block
      block $block_0
        local.get $3
        i32.const 64
        i32.and
        i32.eqz
        br_if $block_0
        local.get $2
        local.get $3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shr_u
        local.set $1
        i64.const 0
        local.set $2
        br $block
      end ;; $block_0
      local.get $3
      i32.eqz
      br_if $block
      local.get $2
      i32.const 64
      local.get $3
      i32.sub
      i64.extend_i32_u
      i64.shl
      local.get $1
      local.get $3
      i64.extend_i32_u
      local.tee $4
      i64.shr_u
      i64.or
      local.set $1
      local.get $2
      local.get $4
      i64.shr_u
      local.set $2
    end ;; $block
    local.get $0
    local.get $1
    i64.store
    local.get $0
    local.get $2
    i64.store offset=8
    )

  (func $78 (type $20)
    (param $0 i64)
    (param $1 i64)
    (result f64)
    (local $2 i32)
    (local $3 i32)
    (local $4 i64)
    (local $5 i64)
    global.get $23
    i32.const 32
    i32.sub
    local.tee $2
    global.set $23
    block $block
      block $block_0
        local.get $1
        i64.const 9223372036854775807
        i64.and
        local.tee $4
        i64.const -4323737117252386816
        i64.add
        local.get $4
        i64.const -4899634919602388992
        i64.add
        i64.ge_u
        br_if $block_0
        local.get $0
        i64.const 60
        i64.shr_u
        local.get $1
        i64.const 4
        i64.shl
        i64.or
        local.set $4
        block $block_1
          local.get $0
          i64.const 1152921504606846975
          i64.and
          local.tee $0
          i64.const 576460752303423489
          i64.lt_u
          br_if $block_1
          local.get $4
          i64.const 4611686018427387905
          i64.add
          local.set $5
          br $block
        end ;; $block_1
        local.get $4
        i64.const 4611686018427387904
        i64.add
        local.set $5
        local.get $0
        i64.const 576460752303423488
        i64.ne
        br_if $block
        local.get $5
        local.get $4
        i64.const 1
        i64.and
        i64.add
        local.set $5
        br $block
      end ;; $block_0
      block $block_2
        local.get $0
        i64.eqz
        local.get $4
        i64.const 9223090561878065152
        i64.lt_u
        local.get $4
        i64.const 9223090561878065152
        i64.eq
        select
        br_if $block_2
        local.get $0
        i64.const 60
        i64.shr_u
        local.get $1
        i64.const 4
        i64.shl
        i64.or
        i64.const 2251799813685247
        i64.and
        i64.const 9221120237041090560
        i64.or
        local.set $5
        br $block
      end ;; $block_2
      i64.const 9218868437227405312
      local.set $5
      local.get $4
      i64.const 4899634919602388991
      i64.gt_u
      br_if $block
      i64.const 0
      local.set $5
      local.get $4
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee $3
      i32.const 15249
      i32.lt_u
      br_if $block
      local.get $2
      i32.const 16
      i32.add
      local.get $0
      local.get $1
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.tee $4
      local.get $3
      i32.const -15233
      i32.add
      call $76
      local.get $2
      local.get $0
      local.get $4
      i32.const 15361
      local.get $3
      i32.sub
      call $77
      local.get $2
      i64.load
      local.tee $4
      i64.const 60
      i64.shr_u
      local.get $2
      i32.const 8
      i32.add
      i64.load
      i64.const 4
      i64.shl
      i64.or
      local.set $5
      block $block_3
        local.get $4
        i64.const 1152921504606846975
        i64.and
        local.get $2
        i64.load offset=16
        local.get $2
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.tee $4
        i64.const 576460752303423489
        i64.lt_u
        br_if $block_3
        local.get $5
        i64.const 1
        i64.add
        local.set $5
        br $block
      end ;; $block_3
      local.get $4
      i64.const 576460752303423488
      i64.ne
      br_if $block
      local.get $5
      i64.const 1
      i64.and
      local.get $5
      i64.add
      local.set $5
    end ;; $block
    local.get $2
    i32.const 32
    i32.add
    global.set $23
    local.get $5
    local.get $1
    i64.const -9223372036854775808
    i64.and
    i64.or
    f64.reinterpret_i64
    )

  (func $79 (type $2)
    i32.const 65536
    global.set $25
    i32.const 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set $24
    )

  (func $80 (type $0)
    (result i32)
    global.get $23
    global.get $24
    i32.sub
    )

  (func $81 (type $0)
    (result i32)
    global.get $25
    )

  (func $82 (type $0)
    (result i32)
    global.get $24
    )

  (func $83 (type $0)
    (result i32)
    global.get $23
    )

  (func $84 (type $3)
    (param $0 i32)
    local.get $0
    global.set $23
    )

  (func $85 (type $0)
    (result i32)
    global.get $23
    )

  (data $27 (i32.const 65536)
    "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00NAN\00INF\00.\00(null)\00hello, wor"
    "ld!\n\00\00\00\00\00\00\00\00\00\00\00\00\19\00\n\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\n\19\19\19\03\n\07\00\01\00\09\0b\18"
    "\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\n\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00"
    "\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
    "\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00"
    "\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")

  (data $28 (i32.const 66096)
    "\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\d8\02\01\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\02\01\00"))