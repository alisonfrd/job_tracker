// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ApplicationTableTable extends ApplicationTable
    with TableInfo<$ApplicationTableTable, ApplicationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ApplicationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyNameMeta = const VerificationMeta(
    'companyName',
  );
  @override
  late final GeneratedColumn<String> companyName = GeneratedColumn<String>(
    'company_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _positionTitleMeta = const VerificationMeta(
    'positionTitle',
  );
  @override
  late final GeneratedColumn<String> positionTitle = GeneratedColumn<String>(
    'position_title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _appliedAtMeta = const VerificationMeta(
    'appliedAt',
  );
  @override
  late final GeneratedColumn<DateTime> appliedAt = GeneratedColumn<DateTime>(
    'applied_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _salaryCentsMeta = const VerificationMeta(
    'salaryCents',
  );
  @override
  late final GeneratedColumn<int> salaryCents = GeneratedColumn<int>(
    'salary_cents',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _employmentTypeMeta = const VerificationMeta(
    'employmentType',
  );
  @override
  late final GeneratedColumn<String> employmentType = GeneratedColumn<String>(
    'employment_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locationScopeMeta = const VerificationMeta(
    'locationScope',
  );
  @override
  late final GeneratedColumn<String> locationScope = GeneratedColumn<String>(
    'location_scope',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    companyName,
    positionTitle,
    status,
    appliedAt,
    notes,
    salaryCents,
    employmentType,
    locationScope,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'application_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ApplicationTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('company_name')) {
      context.handle(
        _companyNameMeta,
        companyName.isAcceptableOrUnknown(
          data['company_name']!,
          _companyNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_companyNameMeta);
    }
    if (data.containsKey('position_title')) {
      context.handle(
        _positionTitleMeta,
        positionTitle.isAcceptableOrUnknown(
          data['position_title']!,
          _positionTitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_positionTitleMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('applied_at')) {
      context.handle(
        _appliedAtMeta,
        appliedAt.isAcceptableOrUnknown(data['applied_at']!, _appliedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_appliedAtMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('salary_cents')) {
      context.handle(
        _salaryCentsMeta,
        salaryCents.isAcceptableOrUnknown(
          data['salary_cents']!,
          _salaryCentsMeta,
        ),
      );
    }
    if (data.containsKey('employment_type')) {
      context.handle(
        _employmentTypeMeta,
        employmentType.isAcceptableOrUnknown(
          data['employment_type']!,
          _employmentTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_employmentTypeMeta);
    }
    if (data.containsKey('location_scope')) {
      context.handle(
        _locationScopeMeta,
        locationScope.isAcceptableOrUnknown(
          data['location_scope']!,
          _locationScopeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_locationScopeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ApplicationTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ApplicationTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      companyName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_name'],
      )!,
      positionTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}position_title'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      appliedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}applied_at'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      salaryCents: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}salary_cents'],
      ),
      employmentType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employment_type'],
      )!,
      locationScope: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_scope'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ApplicationTableTable createAlias(String alias) {
    return $ApplicationTableTable(attachedDatabase, alias);
  }
}

class ApplicationTableData extends DataClass
    implements Insertable<ApplicationTableData> {
  final String id;
  final String companyName;
  final String positionTitle;
  final String status;
  final DateTime appliedAt;
  final String? notes;
  final int? salaryCents;
  final String employmentType;
  final String locationScope;
  final DateTime createdAt;
  final DateTime updatedAt;
  const ApplicationTableData({
    required this.id,
    required this.companyName,
    required this.positionTitle,
    required this.status,
    required this.appliedAt,
    this.notes,
    this.salaryCents,
    required this.employmentType,
    required this.locationScope,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['company_name'] = Variable<String>(companyName);
    map['position_title'] = Variable<String>(positionTitle);
    map['status'] = Variable<String>(status);
    map['applied_at'] = Variable<DateTime>(appliedAt);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || salaryCents != null) {
      map['salary_cents'] = Variable<int>(salaryCents);
    }
    map['employment_type'] = Variable<String>(employmentType);
    map['location_scope'] = Variable<String>(locationScope);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ApplicationTableCompanion toCompanion(bool nullToAbsent) {
    return ApplicationTableCompanion(
      id: Value(id),
      companyName: Value(companyName),
      positionTitle: Value(positionTitle),
      status: Value(status),
      appliedAt: Value(appliedAt),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      salaryCents: salaryCents == null && nullToAbsent
          ? const Value.absent()
          : Value(salaryCents),
      employmentType: Value(employmentType),
      locationScope: Value(locationScope),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory ApplicationTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ApplicationTableData(
      id: serializer.fromJson<String>(json['id']),
      companyName: serializer.fromJson<String>(json['companyName']),
      positionTitle: serializer.fromJson<String>(json['positionTitle']),
      status: serializer.fromJson<String>(json['status']),
      appliedAt: serializer.fromJson<DateTime>(json['appliedAt']),
      notes: serializer.fromJson<String?>(json['notes']),
      salaryCents: serializer.fromJson<int?>(json['salaryCents']),
      employmentType: serializer.fromJson<String>(json['employmentType']),
      locationScope: serializer.fromJson<String>(json['locationScope']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'companyName': serializer.toJson<String>(companyName),
      'positionTitle': serializer.toJson<String>(positionTitle),
      'status': serializer.toJson<String>(status),
      'appliedAt': serializer.toJson<DateTime>(appliedAt),
      'notes': serializer.toJson<String?>(notes),
      'salaryCents': serializer.toJson<int?>(salaryCents),
      'employmentType': serializer.toJson<String>(employmentType),
      'locationScope': serializer.toJson<String>(locationScope),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ApplicationTableData copyWith({
    String? id,
    String? companyName,
    String? positionTitle,
    String? status,
    DateTime? appliedAt,
    Value<String?> notes = const Value.absent(),
    Value<int?> salaryCents = const Value.absent(),
    String? employmentType,
    String? locationScope,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => ApplicationTableData(
    id: id ?? this.id,
    companyName: companyName ?? this.companyName,
    positionTitle: positionTitle ?? this.positionTitle,
    status: status ?? this.status,
    appliedAt: appliedAt ?? this.appliedAt,
    notes: notes.present ? notes.value : this.notes,
    salaryCents: salaryCents.present ? salaryCents.value : this.salaryCents,
    employmentType: employmentType ?? this.employmentType,
    locationScope: locationScope ?? this.locationScope,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ApplicationTableData copyWithCompanion(ApplicationTableCompanion data) {
    return ApplicationTableData(
      id: data.id.present ? data.id.value : this.id,
      companyName: data.companyName.present
          ? data.companyName.value
          : this.companyName,
      positionTitle: data.positionTitle.present
          ? data.positionTitle.value
          : this.positionTitle,
      status: data.status.present ? data.status.value : this.status,
      appliedAt: data.appliedAt.present ? data.appliedAt.value : this.appliedAt,
      notes: data.notes.present ? data.notes.value : this.notes,
      salaryCents: data.salaryCents.present
          ? data.salaryCents.value
          : this.salaryCents,
      employmentType: data.employmentType.present
          ? data.employmentType.value
          : this.employmentType,
      locationScope: data.locationScope.present
          ? data.locationScope.value
          : this.locationScope,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ApplicationTableData(')
          ..write('id: $id, ')
          ..write('companyName: $companyName, ')
          ..write('positionTitle: $positionTitle, ')
          ..write('status: $status, ')
          ..write('appliedAt: $appliedAt, ')
          ..write('notes: $notes, ')
          ..write('salaryCents: $salaryCents, ')
          ..write('employmentType: $employmentType, ')
          ..write('locationScope: $locationScope, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    companyName,
    positionTitle,
    status,
    appliedAt,
    notes,
    salaryCents,
    employmentType,
    locationScope,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ApplicationTableData &&
          other.id == this.id &&
          other.companyName == this.companyName &&
          other.positionTitle == this.positionTitle &&
          other.status == this.status &&
          other.appliedAt == this.appliedAt &&
          other.notes == this.notes &&
          other.salaryCents == this.salaryCents &&
          other.employmentType == this.employmentType &&
          other.locationScope == this.locationScope &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ApplicationTableCompanion extends UpdateCompanion<ApplicationTableData> {
  final Value<String> id;
  final Value<String> companyName;
  final Value<String> positionTitle;
  final Value<String> status;
  final Value<DateTime> appliedAt;
  final Value<String?> notes;
  final Value<int?> salaryCents;
  final Value<String> employmentType;
  final Value<String> locationScope;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const ApplicationTableCompanion({
    this.id = const Value.absent(),
    this.companyName = const Value.absent(),
    this.positionTitle = const Value.absent(),
    this.status = const Value.absent(),
    this.appliedAt = const Value.absent(),
    this.notes = const Value.absent(),
    this.salaryCents = const Value.absent(),
    this.employmentType = const Value.absent(),
    this.locationScope = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ApplicationTableCompanion.insert({
    required String id,
    required String companyName,
    required String positionTitle,
    required String status,
    required DateTime appliedAt,
    this.notes = const Value.absent(),
    this.salaryCents = const Value.absent(),
    required String employmentType,
    required String locationScope,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       companyName = Value(companyName),
       positionTitle = Value(positionTitle),
       status = Value(status),
       appliedAt = Value(appliedAt),
       employmentType = Value(employmentType),
       locationScope = Value(locationScope),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<ApplicationTableData> custom({
    Expression<String>? id,
    Expression<String>? companyName,
    Expression<String>? positionTitle,
    Expression<String>? status,
    Expression<DateTime>? appliedAt,
    Expression<String>? notes,
    Expression<int>? salaryCents,
    Expression<String>? employmentType,
    Expression<String>? locationScope,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (companyName != null) 'company_name': companyName,
      if (positionTitle != null) 'position_title': positionTitle,
      if (status != null) 'status': status,
      if (appliedAt != null) 'applied_at': appliedAt,
      if (notes != null) 'notes': notes,
      if (salaryCents != null) 'salary_cents': salaryCents,
      if (employmentType != null) 'employment_type': employmentType,
      if (locationScope != null) 'location_scope': locationScope,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ApplicationTableCompanion copyWith({
    Value<String>? id,
    Value<String>? companyName,
    Value<String>? positionTitle,
    Value<String>? status,
    Value<DateTime>? appliedAt,
    Value<String?>? notes,
    Value<int?>? salaryCents,
    Value<String>? employmentType,
    Value<String>? locationScope,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return ApplicationTableCompanion(
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
      positionTitle: positionTitle ?? this.positionTitle,
      status: status ?? this.status,
      appliedAt: appliedAt ?? this.appliedAt,
      notes: notes ?? this.notes,
      salaryCents: salaryCents ?? this.salaryCents,
      employmentType: employmentType ?? this.employmentType,
      locationScope: locationScope ?? this.locationScope,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (positionTitle.present) {
      map['position_title'] = Variable<String>(positionTitle.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (appliedAt.present) {
      map['applied_at'] = Variable<DateTime>(appliedAt.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (salaryCents.present) {
      map['salary_cents'] = Variable<int>(salaryCents.value);
    }
    if (employmentType.present) {
      map['employment_type'] = Variable<String>(employmentType.value);
    }
    if (locationScope.present) {
      map['location_scope'] = Variable<String>(locationScope.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ApplicationTableCompanion(')
          ..write('id: $id, ')
          ..write('companyName: $companyName, ')
          ..write('positionTitle: $positionTitle, ')
          ..write('status: $status, ')
          ..write('appliedAt: $appliedAt, ')
          ..write('notes: $notes, ')
          ..write('salaryCents: $salaryCents, ')
          ..write('employmentType: $employmentType, ')
          ..write('locationScope: $locationScope, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ApplicationTableTable applicationTable = $ApplicationTableTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [applicationTable];
}

typedef $$ApplicationTableTableCreateCompanionBuilder =
    ApplicationTableCompanion Function({
      required String id,
      required String companyName,
      required String positionTitle,
      required String status,
      required DateTime appliedAt,
      Value<String?> notes,
      Value<int?> salaryCents,
      required String employmentType,
      required String locationScope,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$ApplicationTableTableUpdateCompanionBuilder =
    ApplicationTableCompanion Function({
      Value<String> id,
      Value<String> companyName,
      Value<String> positionTitle,
      Value<String> status,
      Value<DateTime> appliedAt,
      Value<String?> notes,
      Value<int?> salaryCents,
      Value<String> employmentType,
      Value<String> locationScope,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$ApplicationTableTableFilterComposer
    extends Composer<_$AppDatabase, $ApplicationTableTable> {
  $$ApplicationTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get positionTitle => $composableBuilder(
    column: $table.positionTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get appliedAt => $composableBuilder(
    column: $table.appliedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get salaryCents => $composableBuilder(
    column: $table.salaryCents,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get employmentType => $composableBuilder(
    column: $table.employmentType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationScope => $composableBuilder(
    column: $table.locationScope,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ApplicationTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ApplicationTableTable> {
  $$ApplicationTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get positionTitle => $composableBuilder(
    column: $table.positionTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get appliedAt => $composableBuilder(
    column: $table.appliedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get salaryCents => $composableBuilder(
    column: $table.salaryCents,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get employmentType => $composableBuilder(
    column: $table.employmentType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationScope => $composableBuilder(
    column: $table.locationScope,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ApplicationTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ApplicationTableTable> {
  $$ApplicationTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get positionTitle => $composableBuilder(
    column: $table.positionTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get appliedAt =>
      $composableBuilder(column: $table.appliedAt, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<int> get salaryCents => $composableBuilder(
    column: $table.salaryCents,
    builder: (column) => column,
  );

  GeneratedColumn<String> get employmentType => $composableBuilder(
    column: $table.employmentType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locationScope => $composableBuilder(
    column: $table.locationScope,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ApplicationTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ApplicationTableTable,
          ApplicationTableData,
          $$ApplicationTableTableFilterComposer,
          $$ApplicationTableTableOrderingComposer,
          $$ApplicationTableTableAnnotationComposer,
          $$ApplicationTableTableCreateCompanionBuilder,
          $$ApplicationTableTableUpdateCompanionBuilder,
          (
            ApplicationTableData,
            BaseReferences<
              _$AppDatabase,
              $ApplicationTableTable,
              ApplicationTableData
            >,
          ),
          ApplicationTableData,
          PrefetchHooks Function()
        > {
  $$ApplicationTableTableTableManager(
    _$AppDatabase db,
    $ApplicationTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ApplicationTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ApplicationTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ApplicationTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> companyName = const Value.absent(),
                Value<String> positionTitle = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> appliedAt = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int?> salaryCents = const Value.absent(),
                Value<String> employmentType = const Value.absent(),
                Value<String> locationScope = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ApplicationTableCompanion(
                id: id,
                companyName: companyName,
                positionTitle: positionTitle,
                status: status,
                appliedAt: appliedAt,
                notes: notes,
                salaryCents: salaryCents,
                employmentType: employmentType,
                locationScope: locationScope,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String companyName,
                required String positionTitle,
                required String status,
                required DateTime appliedAt,
                Value<String?> notes = const Value.absent(),
                Value<int?> salaryCents = const Value.absent(),
                required String employmentType,
                required String locationScope,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => ApplicationTableCompanion.insert(
                id: id,
                companyName: companyName,
                positionTitle: positionTitle,
                status: status,
                appliedAt: appliedAt,
                notes: notes,
                salaryCents: salaryCents,
                employmentType: employmentType,
                locationScope: locationScope,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ApplicationTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ApplicationTableTable,
      ApplicationTableData,
      $$ApplicationTableTableFilterComposer,
      $$ApplicationTableTableOrderingComposer,
      $$ApplicationTableTableAnnotationComposer,
      $$ApplicationTableTableCreateCompanionBuilder,
      $$ApplicationTableTableUpdateCompanionBuilder,
      (
        ApplicationTableData,
        BaseReferences<
          _$AppDatabase,
          $ApplicationTableTable,
          ApplicationTableData
        >,
      ),
      ApplicationTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ApplicationTableTableTableManager get applicationTable =>
      $$ApplicationTableTableTableManager(_db, _db.applicationTable);
}
