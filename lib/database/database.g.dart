// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PoemDao? _poemDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Poem` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `title` TEXT, `body` TEXT, `category` TEXT, `isNew` INTEGER, `isLiked` INTEGER)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PoemDao get poemDao {
    return _poemDaoInstance ??= _$PoemDao(database, changeListener);
  }
}

class _$PoemDao extends PoemDao {
  _$PoemDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _poemInsertionAdapter = InsertionAdapter(
            database,
            'Poem',
            (Poem item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'body': item.body,
                  'category': item.category,
                  'isNew': item.isNew,
                  'isLiked': item.isLiked
                },
            changeListener),
        _poemUpdateAdapter = UpdateAdapter(
            database,
            'Poem',
            ['id'],
            (Poem item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'body': item.body,
                  'category': item.category,
                  'isNew': item.isNew,
                  'isLiked': item.isLiked
                },
            changeListener),
        _poemDeletionAdapter = DeletionAdapter(
            database,
            'Poem',
            ['id'],
            (Poem item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'body': item.body,
                  'category': item.category,
                  'isNew': item.isNew,
                  'isLiked': item.isLiked
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Poem> _poemInsertionAdapter;

  final UpdateAdapter<Poem> _poemUpdateAdapter;

  final DeletionAdapter<Poem> _poemDeletionAdapter;

  @override
  Stream<List<Poem>> getAllPoem() {
    return _queryAdapter.queryListStream('select * from Poem',
        mapper: (Map<String, Object?> row) => Poem(
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?,
            category: row['category'] as String?,
            isNew: row['isNew'] as int?,
            isLiked: row['isLiked'] as int?),
        queryableName: 'Poem',
        isView: false);
  }

  @override
  Future<List<Poem>> getAllPoemNew() async {
    return _queryAdapter.queryList('select * from Poem where isNew=1',
        mapper: (Map<String, Object?> row) => Poem(
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?,
            category: row['category'] as String?,
            isNew: row['isNew'] as int?,
            isLiked: row['isLiked'] as int?));
  }

  @override
  Future<List<Poem>> getAllPoemLiked() async {
    return _queryAdapter.queryList('select * from Poem where isLiked=1',
        mapper: (Map<String, Object?> row) => Poem(
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?,
            category: row['category'] as String?,
            isNew: row['isNew'] as int?,
            isLiked: row['isLiked'] as int?));
  }

  @override
  Stream<Poem?> getPoemById(int id) {
    return _queryAdapter.queryStream('select * from Poem where id=?1',
        mapper: (Map<String, Object?> row) => Poem(
            id: row['id'] as int?,
            title: row['title'] as String?,
            body: row['body'] as String?,
            category: row['category'] as String?,
            isNew: row['isNew'] as int?,
            isLiked: row['isLiked'] as int?),
        arguments: [id],
        queryableName: 'Poem',
        isView: false);
  }

  @override
  Future<void> deleteAllPoem() async {
    await _queryAdapter.queryNoReturn('delete from Poem');
  }

  @override
  Future<void> insertPoem(Poem poem) async {
    await _poemInsertionAdapter.insert(poem, OnConflictStrategy.abort);
  }

  @override
  Future<void> updatePoem(Poem poem) async {
    await _poemUpdateAdapter.update(poem, OnConflictStrategy.abort);
  }

  @override
  Future<void> deletePoem(Poem poem) async {
    await _poemDeletionAdapter.delete(poem);
  }
}
